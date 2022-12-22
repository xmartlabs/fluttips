import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';

class VideosScreen extends StatelessWidget {
  const VideosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => _VideosContentScreen();
}

class _VideosContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.localizations.videos,
              style: context.theme.textStyles.bodyMedium!.copyWith(
                color: context.theme.colors.surface.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.h),
            Icon(
              Icons.play_circle_outline_outlined,
              color: context.theme.colors.surface.shade700,
            ),
          ],
        ),
      );
}
