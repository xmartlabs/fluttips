import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/gen/assets.gen.dart';

// TODO RENAME FILE
class OnboardingStartScreen extends StatelessWidget {
  const OnboardingStartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: context.theme.colors.background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 130.w),
            Assets.images.onboardingLogoApp.image(),
            SizedBox(height: 70.w),
            Assets.images.onboardingBranding.image(),
          ],
        ),
      );
}
