import 'package:bloc/bloc.dart';
import 'package:fluttips/core/model/onboarding_status.dart';
import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fluttips/core/repository/session_repository.dart';
import 'package:fluttips/core/di/di_provider.dart';
import 'package:fluttips/ui/onboarding/onboarding_step.dart';

part 'onboarding_cubit.freezed.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingBaseState> {
  // ignore: unused_field
  final GeneralErrorHandler _errorHandler;
  final SessionRepository _sessionRepository = DiProvider.get();

  OnboardingCubit(this._errorHandler)
      : super(const OnboardingBaseState.state());

  void onPressedAction() {
    if (state.onboardingStep.index > OnboardingStep.onboardingInitial.index) {
      _sessionRepository.setSessionStatus(AppSessionStatus.onboarded);
    } else {
      emit(
        state.copyWith(
          onboardingStep: OnboardingStep.values[state.onboardingStep.index + 1],
        ),
      );
    }
  }

  void setCurrentPage(int index) => emit(
        state.copyWith(onboardingStep: OnboardingStep.onboardingPages[index]),
      );
}
