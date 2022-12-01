import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/ui/onboarding/onboarding_cubit.dart';

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
        child: TextButton(
          onPressed: context.read<OnboardingCubit>().onPressedAction,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 5,
              left: 10,
              right: 5,
              bottom: 5,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
              side: BorderSide(
                color: context.theme.colors.surface,
              ),
            ),
            backgroundColor: context.theme.colors.background,
            alignment: Alignment.center,
          ),
          child: Text(
            text,
            style: context.theme.textStyles.labelLarge!.copyWith(
              color: context.theme.colors.surface,
            ),
          ),
        ),
      );
}
