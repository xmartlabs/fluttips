import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fluttips/core/repository/session_repository.dart';

import 'package:fluttips/core/di/di_provider.dart';

import 'package:fluttips/ui/resources.dart';

part 'onboarding_cubit.freezed.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingBaseState> {
  final GeneralErrorHandler _errorHandler;
  final SessionRepository _sessionRepository = DiProvider.get();

  OnboardingCubit(this._errorHandler)
      : super(const OnboardingBaseState.state());

  Future<void> onPressedAction() async {
    state.isStartButtonPressed
        ? _sessionRepository.authenticateUser()
        : emit(
            state.copyWith(isStartButtonPressed: !state.isStartButtonPressed));
  }

  String textButton(int index) => index == 2 ? 'Lets go!' : 'Skip';

  void setCurrentPage(int index) {
    emit(state.copyWith(currentPage: index, buttonText: textButton(index)));
  }
}
