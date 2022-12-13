import 'package:flutter/widgets.dart';
import 'package:fluttips/gen/assets.gen.dart';
import 'package:fluttips/ui/common/context_extensions.dart';

enum OnboardingStep {
  onboardingInitial,
  onboardingTipsAndTricks,
  onboardingFavourites,
  onboardingGestures;

  static List<OnboardingStep> get onboardingPages => [
        onboardingTipsAndTricks,
        onboardingFavourites,
        onboardingGestures,
      ];
}

extension OnboardingTextExtensions on OnboardingStep {
  String getPrimaryText(BuildContext context) {
    switch (this) {
      case OnboardingStep.onboardingInitial:
        return "";
      case OnboardingStep.onboardingTipsAndTricks:
        return context.localizations.onboarding_tips_and_tricks_first_text;
      case OnboardingStep.onboardingFavourites:
        return context.localizations.onboarding_favourite_first_text;
      case OnboardingStep.onboardingGestures:
        return context.localizations.onboarding_gestures_first_text;
    }
  }

  String getSecondaryText(BuildContext context) {
    switch (this) {
      case OnboardingStep.onboardingInitial:
        return "";
      case OnboardingStep.onboardingTipsAndTricks:
        return context.localizations.onboarding_tips_and_trick_second_text;
      case OnboardingStep.onboardingFavourites:
        return context.localizations.onboarding_favourite_second_text;
      case OnboardingStep.onboardingGestures:
        return context.localizations.onboarding_gestures_second_text;
    }
  }

  AssetGenImage? getIcon(BuildContext context) {
    switch (this) {
      case OnboardingStep.onboardingInitial:
        return null;
      case OnboardingStep.onboardingTipsAndTricks:
        return Assets.images.onboardingDescribeApp;
      case OnboardingStep.onboardingFavourites:
        return Assets.images.onboardingFavourite;
      case OnboardingStep.onboardingGestures:
        return Assets.images.onboardingGestures;
    }
  }

  String getButtonText(BuildContext context) {
    switch (this) {
      case OnboardingStep.onboardingInitial:
        return context.localizations.button_start;
      case OnboardingStep.onboardingTipsAndTricks:
      case OnboardingStep.onboardingFavourites:
        return context.localizations.button_skip;
      case OnboardingStep.onboardingGestures:
        return context.localizations.button_lets_go;
    }
  }
}
