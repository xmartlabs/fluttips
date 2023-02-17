import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttips/ui/about/about_screen.dart';
import 'package:fluttips/ui/catalog/catalog_screen.dart';
import 'package:fluttips/ui/home/home_screen.dart';
import 'package:fluttips/ui/onboarding/onboarding_screen.dart';
import 'package:fluttips/ui/privacy_policy/privacy_policy_screen.dart';
import 'package:fluttips/ui/privacy_policy/terms_and_condition_screen.dart';
import 'package:fluttips/ui/router/app_status_router_guard.dart';
import 'package:fluttips/ui/section/section_router.dart';
import 'package:fluttips/ui/videos_details_screen/videos_details_screen.dart';
import 'package:fluttips/ui/favourites_tip_details/favourites_tip_details_screen.dart';
import 'package:fluttips/ui/favourites_tip_simple_list/favourites_tip_simple_list_screen.dart';
import 'package:fluttips/ui/image_tip_details/image_tip_details_screen.dart';
import 'package:fluttips/ui/image_tip_details/show_image_tip_details_type.dart';
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
      name: 'UncompletedOnboardingRouter',
      page: SectionRouter,
      initial: true,
      path: '/onboarding',
      guards: [NotOnboardedGuard],
      children: [
        AutoRoute(
          path: '',
          initial: true,
          name: 'OnboardingRoute',
          page: OnboardingScreen,
        ),
      ],
    ),
    AutoRoute(
      name: 'UserOnboardedRouter',
      page: SectionRouter,
      path: '/',
      guards: [OnboardedGuard],
      children: [
        AutoRoute(
          page: HomeScreen,
          initial: true,
          path: 'home',
          children: [
            AutoRoute(
              path: 'images',
              name: 'HomeTipsScreenRoute',
              page: ImageTipDetailsScreen,
            ),
            AutoRoute(
              path: 'videos',
              name: 'HomeVideosScreenRoute',
              page: VideosDetailsScreen,
            ),
            AutoRoute(
              path: 'favourites',
              name: 'HomeFavouritesTipsScreenRoute',
              page: FavouritesTipSimpleListScreen,
            ),
            AutoRoute(
              path: 'about',
              name: 'HomeAboutScreenRoute',
              page: AboutScreen,
            ),
          ],
        ),
        AutoRoute(
          path: 'favourite_images',
          name: 'FavoritesTipDetailsScreen',
          page: FavouritesTipDetailsScreen,
        ),
      ],
    ),
    AutoRoute(
      path: '/privacy_policy',
      name: 'PrivacyPolicyRoute',
      page: PrivacyPolicyScreen,
    ),
    AutoRoute(
      path: '/terms_and_conditions',
      name: 'TermsAndConditionsRoute',
      page: TermsAndConditionsScreen,
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({
    required super.notOnboardedGuard,
    required super.onboardedGuard,
  });
}
