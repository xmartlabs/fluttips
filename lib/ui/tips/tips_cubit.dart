import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartx/dartx.dart';
import 'package:fluttips/core/di/di_provider.dart';
import 'package:fluttips/core/model/extensions/stock_extensions.dart';
import 'package:fluttips/core/model/extensions/tip_extension.dart';
import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';
import 'package:fluttips/ui/tips/show_tips_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fluttips/core/repository/tip_repository.dart';
import 'package:fluttips/core/model/tip.dart';
import 'package:rxdart/rxdart.dart';
import 'package:fluttips/ui/common/fab.dart';

part 'tips_cubit.freezed.dart';

part 'tips_state.dart';

class TipCubit extends Cubit<TipsBaseState> {
  final TipRepository _tipRepository = DiProvider.get();
  final GeneralErrorHandler _errorHandler;
  final ShowTipsType _showTipsType;
  Tip? tip;

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

  void setCurrentPage(int index) {
    emit(state.copyWith(currentPage: index));
    tip = state.tips.elementAt(index);
  }

  Future<void> onTipDisplayed(Tip tip) =>
      _tipRepository.setTipAsViewedInSession(tip);

  Future<void> changeFavouriteButton(int index) =>
      _tipRepository.toggleFavouriteTip(state.tips[index]);

  void _subscribeToTips() {
    subscriptionToTips = _getTipStream().listen((tips) {
      if (tips.isNotEmpty) {
        onTipDisplayed(tips.elementAt(state.currentPage));
        final currentPage = tip == null
            ? state.currentPage
            : tips.indexWhere((element) => element.id == tip?.id);
        emit(state.copyWith(currentPage: currentPage, tips: tips));
      }
    });
  }

  Stream<List<Tip>> _getTipStream() => _showTipsType == ShowTipsType.favourite
      ? _getFavouritesTipStream()
      : _getAllTips();

  Stream<List<Tip>> _getFavouritesTipStream() => _tipRepository
      .getFavouritesTips()
      .filterSuccessStockResponseData(_errorHandler.handleError)
      .scan((acc, current, index) => _mergeTipLists(acc, current), []);

  List<Tip> _mergeTipLists(
    List<Tip> originalFavouriteTips,
    List<Tip> currentFavouriteTips,
  ) {
    if (originalFavouriteTips.isEmpty) {
      return currentFavouriteTips;
    }
    final Map<String, DateTime?> tipFavouriteDates = currentFavouriteTips
        .associate((tip) => MapEntry(tip.id, tip.favouriteDate));
    return originalFavouriteTips
        .map((tip) => tip.copyWith(favouriteDate: tipFavouriteDates[tip.id]))
        .toList();
  }

  Stream<List<Tip>> _getAllTips() => _tipRepository
      .getTips()
      .filterSuccessStockResponseData(_errorHandler.handleError);

  FabState changeState() =>
      state.tips.isNotEmpty && state.tips[state.currentPage].isFavourite
          ? const FabState.selected()
          : const FabState.notSelected();
}
