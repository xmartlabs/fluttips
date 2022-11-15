import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_template/core/common/extension/stream_future_extensions.dart';
import 'package:flutter_template/core/di/di_provider.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/core/repository/tip_repository.dart';
import 'package:flutter_template/core/model/tip.dart';
import 'package:stock/stock.dart';

part 'tips_cubit.freezed.dart';

part 'tips_state.dart';

class TipCubit extends Cubit<TipsBaseState> {
  //ignore: unused_field
  final GeneralErrorHandler _errorHandler;
  late StreamSubscription<List<Tip>> subscriptionToTips;
  final TipRepository _tipRepository = DiProvider.get();

  TipCubit(this._errorHandler) : super(const TipsBaseState.state()) {
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
    subscriptionToTips = _tipRepository
        .getTips()
        .filterSuccess(_errorHandler.handleError)
        .where((event) => event.isData)
        .map((event) => event.requireData())
        .listen((tips) {
      if (tips.isNotEmpty) {
        onTipDisplayed(tips.first);
      }
      emit(state.copyWith(tips: tips));
    });
  }
}
