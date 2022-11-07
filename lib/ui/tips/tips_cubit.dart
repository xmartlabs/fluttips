import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_template/core/di/di_provider.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/core/repository/tip_repository.dart';
import 'package:flutter_template/core/model/tip.dart';

part 'tips_cubit.freezed.dart';

part 'tips_state.dart';

class TipCubit extends Cubit<TipsBaseState> {
  //ignore: unused_field
  final GeneralErrorHandler _errorHandler;
  final TipRepository _tipRepository = DiProvider.get();

  TipCubit(this._errorHandler)
      : super(
          TipsBaseState.state(),
        ) {
    unawaited(getTips());
  }

  void setCurrentPage(int index) {
    emit(state.copyWith(currentPage: index));
  }

  void changeFavouriteButton(int index) {
    // state.tips[index].favourite
    final newList = [...state.tips];
    var tip = newList[index];
    newList[index] = tip.copyWith(favourite: !tip.favourite);
    emit(state.copyWith(tips: newList));
  }

  Future<void> getTips() async {
    //TODO: transform to stream
    final tips = await _tipRepository.getTips();
    emit(state.copyWith(tips: tips.toList()));
  }
}
