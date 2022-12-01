import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';

import 'package:fluttips/ui/common/assets_route.dart';

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
            SizedBox(
              height: 130.w,
            ),
            Image.asset(
              AssetsRoute.onboarding_logo_app,
            ),
            SizedBox(
              height: 70.w,
            ),
            Image.asset(
              AssetsRoute.onboarding_branding,
            ),
          ],
        ),
      );
}
