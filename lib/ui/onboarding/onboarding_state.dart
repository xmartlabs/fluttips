part of 'onboarding_cubit.dart';

@freezed
class OnboardingBaseState with _$OnboardingBaseState {
  const factory OnboardingBaseState.state({
    @Default(0) int currentPage,
    @Default(false) bool isStartButtonPressed,
    @Default('Start') String buttonText,
  }) = _OnboardingState;
}
