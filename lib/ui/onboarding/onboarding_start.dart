import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/app_button.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/gen/assets.gen.dart';

class OnboardingStartScreen extends StatelessWidget {
  const OnboardingStartScreen({
    required this.buttonText,
    required this.action,
    Key? key,
  }) : super(key: key);

  final VoidCallback action;
  final String buttonText;

  @override
  Widget build(BuildContext context) => Container(
        color: context.theme.colors.background,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 130.w),
                Assets.images.onboardingLogoApp.image(),
                SizedBox(height: 70.w),
                Assets.images.onboardingBranding.image(),
              ],
            ),
            Positioned(
              bottom: 15.h,
              right: 15.w,
              child: AppButton(
                text: buttonText,
                action: action,
                backgroundColor: context.theme.colors.background,
              ),
            ),
          ],
        ),
      );
}
