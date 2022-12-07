import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttips/core/model/onboarding_status.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fluttips/core/repository/session_repository.dart';
import 'package:fluttips/core/di/di_provider.dart';

import 'package:fluttips/ui/onboarding/onboarding_step.dart';

part 'onboarding_cubit.freezed.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingBaseState> {
  final GeneralErrorHandler _errorHandler;
  final SessionRepository _sessionRepository = DiProvider.get();

  OnboardingCubit(this._errorHandler)
      : super(const OnboardingBaseState.state());

  void onPressedAction() async =>
      state.onboardingStep.index > OnboardingStep.onboarding_initial.index
          ? _sessionRepository.setOnboardingState(AppSessionStatus.onboarded)
          : emit(
              state.copyWith(
                onboardingStep:
                    OnboardingStep.values[state.onboardingStep.index + 1],
              ),
            );

  String textButton(int index, BuildContext context) => index == 2
      ? context.localizations.button_lets_go
      : context.localizations.button_skip;

  void setCurrentPage(int index) => emit(
        state.copyWith(onboardingStep: OnboardingStep.onboardingPages[index]),
      );
}
