import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) => MaterialButton(
        onPressed: () => context.router.navigateBack(),
        color: context.theme.colors.primary,
        padding: EdgeInsets.all(max(10, kIsWeb ? 12 : 8.w)),
        shape: const CircleBorder(),
        child: Icon(
          Icons.chevron_left_outlined,
          color: context.theme.colors.primary.shade100,
          size: max(30, min(26, 26.w)),
        ),
      );
}
