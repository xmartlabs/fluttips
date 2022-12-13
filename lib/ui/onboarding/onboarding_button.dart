import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttips/ui/onboarding/onboarding_cubit.dart';
import 'package:fluttips/ui/common/border_button.dart';

class OnboardingButton extends StatelessWidget {
  final String text;

  const OnboardingButton({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Positioned(
        bottom: 15,
        right: 15,
        child: BorderButton(
          text: text,
          action: context.read<OnboardingCubit>().onPressedAction,
        ),
      );
}
