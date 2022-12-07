import 'package:flutter/widgets.dart';
import 'package:fluttips/gen/assets.gen.dart';
import 'package:fluttips/ui/common/context_extensions.dart';

enum OnboardingStep {
  onboarding_initial(),
  onboarding_tips_and_tricks(),
  onboarding_favourites(),
  onboarding_gestures();

  const OnboardingStep();

  static List<OnboardingStep> get onboardingPages =>
      [onboarding_tips_and_tricks, onboarding_favourites, onboarding_gestures];
}

extension OnboardingTextExtensions on OnboardingStep {
  String getPrimaryText(BuildContext context) {
    switch (this) {
      case OnboardingStep.onboarding_initial:
        return "";
      case OnboardingStep.onboarding_tips_and_tricks:
        return context.localizations.onboarding_tips_and_tricks_first_text;
      case OnboardingStep.onboarding_favourites:
        return context.localizations.onboarding_favourite_first_text;
      case OnboardingStep.onboarding_gestures:
        return context.localizations.onboarding_gestures_first_text;
    }
  }

  String getSecondaryText(BuildContext context) {
    switch (this) {
      case OnboardingStep.onboarding_initial:
        return "";
      case OnboardingStep.onboarding_tips_and_tricks:
        return context.localizations.onboarding_tips_and_trick_second_text;
      case OnboardingStep.onboarding_favourites:
        return context.localizations.onboarding_favourite_second_text;
      case OnboardingStep.onboarding_gestures:
        return context.localizations.onboarding_gestures_second_text;
    }
  }

  AssetGenImage? getIcon(BuildContext context) {
    switch (this) {
      case OnboardingStep.onboarding_initial:
        return null;
      case OnboardingStep.onboarding_tips_and_tricks:
        return Assets.images.onboardingDescribeApp;
      case OnboardingStep.onboarding_favourites:
        return Assets.images.onboardingFavourite;
      case OnboardingStep.onboarding_gestures:
        return Assets.images.onboardingGestures;
    }
  }

  String getButtonText(BuildContext context) {
    switch (this) {
      case OnboardingStep.onboarding_initial:
        return "Start";
      case OnboardingStep.onboarding_tips_and_tricks:
      case OnboardingStep.onboarding_favourites:
        return "Skip";
      case OnboardingStep.onboarding_gestures:
        return "Let's go!";
    }
  }
}
