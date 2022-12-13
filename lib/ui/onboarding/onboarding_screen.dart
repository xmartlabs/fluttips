import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/onboarding/onboarding_step.dart';
import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';
import 'package:fluttips/ui/onboarding/onboarding_cubit.dart';
import 'package:fluttips/ui/onboarding/onboarding_pager.dart';
import 'package:fluttips/ui/onboarding/onboarding_start.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/ui/common/border_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        lazy: false,
        create: (context) => OnboardingCubit(context.read<ErrorHandlerCubit>()),
        child: const OnboardingScreenContent(),
      );
}

class OnboardingScreenContent extends StatelessWidget {
  const OnboardingScreenContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<OnboardingCubit, OnboardingBaseState>(
        builder: (context, state) {
          final isStartButtonPressed = state.onboardingStep.index >
              OnboardingStep.onboardingInitial.index;
          final btnText = state.onboardingStep.getButtonText(context);
          return Scaffold(
            backgroundColor: context.theme.colors.background,
            body: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                isStartButtonPressed
                    ? const OnboardingContentScreen()
                    : const OnboardingStartScreen(),
                Positioned(
                  bottom: 15,
                  right: 15,
                  child: BorderButton(
                    text: btnText,
                    action: context.read<OnboardingCubit>().onPressedAction,
                  ),
                ),
              ],
            ),
          );
        },
      );
}
