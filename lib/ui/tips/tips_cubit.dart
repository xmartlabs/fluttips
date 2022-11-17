import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter_template/core/di/di_provider.dart';
import 'package:flutter_template/core/model/extensions/stock_extensions.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:flutter_template/ui/tips/show_tips_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/core/repository/tip_repository.dart';
import 'package:flutter_template/core/model/tip.dart';
import 'package:rxdart/rxdart.dart';

part 'tips_cubit.freezed.dart';

part 'tips_state.dart';

class TipCubit extends Cubit<TipsBaseState> {
  final TipRepository _tipRepository = DiProvider.get();

  final GeneralErrorHandler _errorHandler;
  final ShowTipsType _showTipsType;
  final Tip? tip;
  late StreamSubscription<List<Tip>> subscriptionToTips;

  TipCubit(this._showTipsType, this._errorHandler, this.tip)
      : super(const TipsBaseState.state()) {
    _subscribeToTips();
  }

  @override
  Future<void> close() async {
    await subscriptionToTips.cancel();
    return super.close();
  }

  void setCurrentPage(int index) => emit(state.copyWith(currentPage: index));

  Future<void> onTipDisplayed(Tip tip) =>
      _tipRepository.setTipAsViewedInSession(tip);

  Future<void> changeFavouriteButton(Tip tip) =>
      _tipRepository.toggleFavouriteTip(tip);

  void _subscribeToTips() {
    subscriptionToTips = _getTipStream().listen((tips) {
      if (tips.isNotEmpty) {
        onTipDisplayed(tips.first);
        if (tip != null) {
          emit(
            state.copyWith(
              currentPage:
                  state.tips.indexWhere((element) => element.id == tip?.id),
            ),
          );
        }
      }
      emit(state.copyWith(tips: tips));
    });
  }

  Stream<List<Tip>> _getTipStream() => _showTipsType == ShowTipsType.favourite
      ? _getFavouritesTipStream()
      : _getAllTips();

  Stream<List<Tip>> _getFavouritesTipStream() => _tipRepository
      .getFavouritesTips()
      .filterSuccessStockResponseData(_errorHandler.handleError)
      .scan((acc, current, index) => _appendLists(acc, current), []);

  List<Tip> _appendLists(List<Tip> acc, List<Tip> current) {
    if (acc.isEmpty) {
      return current;
    }
    final Map<String, Tip> currentValues = current.associateBy((tip) => tip.id);
    return acc
        .map(
          (tip) => tip.copyWith(
            favouriteDate: currentValues[tip.id]?.favouriteDate,
          ),
        )
        .toList();
  }

  Stream<List<Tip>> _getAllTips() => _tipRepository
      .getTips()
      .filterSuccessStockResponseData(_errorHandler.handleError);
}
