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
  final GeneralErrorHandler _errorHandler;
  final TipRepository _tipRepository = DiProvider.get();

  TipCubit(this._errorHandler)
      : super(
          TipsBaseState.state(
            tips: [],
          ),
        ) {
    unawaited(getTips());
  }

  Future<void> getTips() async {
    final tips = await _tipRepository.getTips();
    emit(state.copyWith(tips: tips.toList()));
  }
}
