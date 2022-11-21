import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fluttips/core/common/extension/stream_future_extensions.dart';
import 'package:fluttips/core/di/di_provider.dart';
import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fluttips/core/repository/tip_repository.dart';
import 'package:fluttips/core/model/tip.dart';
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

  void changeFavouriteButton(int index) {
    //TODO: do this in the repository
    final newList = [...state.tips];
    final tip = newList[index];
    newList[index] = tip.copyWith(favourite: !tip.favourite);
    emit(state.copyWith(tips: newList));
  }

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
