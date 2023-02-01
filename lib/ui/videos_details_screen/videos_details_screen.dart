import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/core/common/logger.dart';
import 'package:fluttips/ui/common/app_primary_button.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/helper/launch_helper.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/gen/assets.gen.dart';
import 'package:fluttips/core/common/config.dart';

class VideosDetailsScreen extends StatelessWidget {
  const VideosDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => _VideosContentScreen();
}

class _VideosContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.fromLTRB(70.w, 30.h, 70.w, 30.h),
        margin: EdgeInsets.only(right: 30.w, left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.localizations.videos,
              style: context.theme.textStyles.headlineLarge!.copyWith(
                color: context.theme.colors.surface,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.ltr,
            ),
            SizedBox(height: 20.h),
            Text(
              context.localizations.videos_description,
              style: context.theme.textStyles.bodyLarge!.copyWith(
                color: context.theme.colors.surface,
              ),
              textDirection: TextDirection.ltr,
            ),
            SizedBox(height: 20.h),
            Divider(color: context.theme.colors.surface.shade700),
            SizedBox(height: 30.h),
            AppPrimaryButton(
              image: Assets.images.icYoutubeLogo.image(fit: BoxFit.fitWidth),
              text: context.localizations.videos_button,
              onPressed: () {
                unawaited(
                  openYoutubePlaylist(Config.widgetOfTheWeekPlaylistId).onError(
                    (error, stackTrace) =>
                        Logger.w("Error opening youtube", error, stackTrace),
                  ),
                );
              },
            ),
          ],
        ),
      );
}
