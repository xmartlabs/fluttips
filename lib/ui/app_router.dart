import 'package:auto_route/auto_route.dart';
import 'package:flutter_template/ui/catalog/catalog_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_template/ui/home/home_screen.dart';
import 'package:flutter_template/ui/section/section_router.dart';
import 'package:flutter_template/ui/videos/videos.dart';
import 'package:flutter_template/ui/images/images_screen.dart';

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
              path: AppRouter.IMAGES_PATH,
              page: ImagesScreen,
            ),
            AutoRoute(
              path: AppRouter.VIDEOS_PATH,
              page: VideosScreen,
            ),
          ],
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {
  static const SIGN_IN_PATH = 'signin';
  static const IMAGES_PATH = 'images';
  static const VIDEOS_PATH = 'videos';
}
