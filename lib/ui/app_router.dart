import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_template/ui/catalog/catalog_screen.dart';
import 'package:flutter_template/ui/home/home_screen.dart';
import 'package:flutter_template/ui/section/section_router.dart';
import 'package:flutter_template/ui/tips/tips_screen.dart';
import 'package:flutter_template/ui/videos/videos.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(
      name: 'CatalogRouter',
      page: CatalogScreen,
    ),
    AutoRoute(
      name: 'UnauthenticatedRouter',
      page: SectionRouter,
      children: [],
    ),
    AutoRoute(
      name: 'AuthenticatedRouter',
      page: SectionRouter,
      children: [
        AutoRoute(
          page: HomeScreen,
          initial: true,
          children: [
            AutoRoute(
              path: AppRouter.tipsPath,
              page: TipsScreen,
            ),
            AutoRoute(
              path: AppRouter.videosPath,
              page: VideosScreen,
            ),
          ],
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {
  static const signInPath = 'signin';
  static const tipsPath = 'tips';
  static const videosPath = 'videos';
}
