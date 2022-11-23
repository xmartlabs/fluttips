import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttips/ui/catalog/catalog_screen.dart';
import 'package:fluttips/ui/favourites/list_favourites_tips_screen.dart';
import 'package:fluttips/ui/home/home_screen.dart';
import 'package:fluttips/ui/section/section_router.dart';
import 'package:fluttips/ui/tips/show_tips_type.dart';
import 'package:fluttips/ui/tips/tips_screen.dart';
import 'package:fluttips/ui/videos/videos.dart';
import 'package:fluttips/ui/favourites/favourites_tips_screen.dart';
import 'package:fluttips/core/model/tip.dart';

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
              name: 'HomeTipsScreenRoute',
              page: TipsScreen,
            ),
            AutoRoute(
              path: AppRouter.videosPath,
              name: 'HomeVideosScreenRoute',
              page: VideosScreen,
            ),
            AutoRoute(
              path: AppRouter.favouritesTipsPath,
              name: 'HomeFavouritesTipsScreenRoute',
              page: FavouritesTipsScreen,
            ),
          ],
        ),
        AutoRoute(
          path: AppRouter.listFavouritesTipsPath,
          page: ListFavouritesTipsScreen,
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {
  static const signInPath = 'signin';
  static const tipsPath = 'tips';
  static const videosPath = 'videos';
  static const favouritesTipsPath = 'favourite';
  static const listFavouritesTipsPath = 'list_favourite';
}
