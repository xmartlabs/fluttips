part of 'onboarding_cubit.dart';

@freezed
class OnboardingBaseState with _$OnboardingBaseState {
  const factory OnboardingBaseState.state({
    @Default(OnboardingStep.onboardingInitial) OnboardingStep onboardingStep,
  }) = _OnboardingState;
}
