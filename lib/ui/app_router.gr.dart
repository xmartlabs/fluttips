// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter({
    GlobalKey<NavigatorState>? navigatorKey,
    required this.notOnboardedGuard,
    required this.onboardedGuard,
  }) : super(navigatorKey);

  final NotOnboardedGuard notOnboardedGuard;

  final OnboardedGuard onboardedGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    CatalogRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CatalogScreen(),
      );
    },
    UncompletedOnboardingRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SectionRouter(),
      );
    },
    UserOnboardedRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SectionRouter(),
      );
    },
    PrivacyPolicyRoute.name: (routeData) {
      final args = routeData.argsAs<PrivacyPolicyRouteArgs>(
          orElse: () => const PrivacyPolicyRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PrivacyPolicyScreen(key: args.key),
      );
    },
    TermsAndConditionsRoute.name: (routeData) {
      final args = routeData.argsAs<TermsAndConditionsRouteArgs>(
          orElse: () => const TermsAndConditionsRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: TermsAndConditionsScreen(key: args.key),
      );
    },
    OnboardingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const OnboardingScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    FavoritesTipDetailsScreen.name: (routeData) {
      final args = routeData.argsAs<FavoritesTipDetailsScreenArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: FavouritesTipDetailsScreen(
          showTipType: args.showTipType,
          tip: args.tip,
          key: args.key,
        ),
      );
    },
    HomeTipsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<HomeTipsScreenRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ImageTipDetailsScreen(
          showTipType: args.showTipType,
          tip: args.tip,
          key: args.key,
        ),
      );
    },
    HomeVideosScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const VideosDetailsScreen(),
      );
    },
    HomeFavouritesTipsScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FavouritesTipSimpleListScreen(),
      );
    },
    HomeAboutScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AboutScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          CatalogRouter.name,
          path: '/catalog-screen',
        ),
        RouteConfig(
          UncompletedOnboardingRouter.name,
          path: '/onboarding',
          guards: [notOnboardedGuard],
          children: [
            RouteConfig(
              OnboardingRoute.name,
              path: '',
              parent: UncompletedOnboardingRouter.name,
            )
          ],
        ),
        RouteConfig(
          UserOnboardedRouter.name,
          path: '/',
          guards: [onboardedGuard],
          children: [
            RouteConfig(
              '#redirect',
              path: '',
              parent: UserOnboardedRouter.name,
              redirectTo: 'home',
              fullMatch: true,
            ),
            RouteConfig(
              HomeScreenRoute.name,
              path: 'home',
              parent: UserOnboardedRouter.name,
              children: [
                RouteConfig(
                  HomeTipsScreenRoute.name,
                  path: 'images',
                  parent: HomeScreenRoute.name,
                ),
                RouteConfig(
                  HomeVideosScreenRoute.name,
                  path: 'videos',
                  parent: HomeScreenRoute.name,
                ),
                RouteConfig(
                  HomeFavouritesTipsScreenRoute.name,
                  path: 'favourites',
                  parent: HomeScreenRoute.name,
                ),
                RouteConfig(
                  HomeAboutScreenRoute.name,
                  path: 'about',
                  parent: HomeScreenRoute.name,
                ),
              ],
            ),
            RouteConfig(
              FavoritesTipDetailsScreen.name,
              path: 'favourite_images',
              parent: UserOnboardedRouter.name,
            ),
          ],
        ),
        RouteConfig(
          PrivacyPolicyRoute.name,
          path: '/privacy_policy',
        ),
        RouteConfig(
          TermsAndConditionsRoute.name,
          path: '/terms_and_conditions',
        ),
      ];
}

/// generated route for
/// [CatalogScreen]
class CatalogRouter extends PageRouteInfo<void> {
  const CatalogRouter()
      : super(
          CatalogRouter.name,
          path: '/catalog-screen',
        );

  static const String name = 'CatalogRouter';
}

/// generated route for
/// [SectionRouter]
class UncompletedOnboardingRouter extends PageRouteInfo<void> {
  const UncompletedOnboardingRouter({List<PageRouteInfo>? children})
      : super(
          UncompletedOnboardingRouter.name,
          path: '/onboarding',
          initialChildren: children,
        );

  static const String name = 'UncompletedOnboardingRouter';
}

/// generated route for
/// [SectionRouter]
class UserOnboardedRouter extends PageRouteInfo<void> {
  const UserOnboardedRouter({List<PageRouteInfo>? children})
      : super(
          UserOnboardedRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'UserOnboardedRouter';
}

/// generated route for
/// [PrivacyPolicyScreen]
class PrivacyPolicyRoute extends PageRouteInfo<PrivacyPolicyRouteArgs> {
  PrivacyPolicyRoute({Key? key})
      : super(
          PrivacyPolicyRoute.name,
          path: '/privacy_policy',
          args: PrivacyPolicyRouteArgs(key: key),
        );

  static const String name = 'PrivacyPolicyRoute';
}

class PrivacyPolicyRouteArgs {
  const PrivacyPolicyRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'PrivacyPolicyRouteArgs{key: $key}';
  }
}

/// generated route for
/// [TermsAndConditionsScreen]
class TermsAndConditionsRoute
    extends PageRouteInfo<TermsAndConditionsRouteArgs> {
  TermsAndConditionsRoute({Key? key})
      : super(
          TermsAndConditionsRoute.name,
          path: '/terms_and_conditions',
          args: TermsAndConditionsRouteArgs(key: key),
        );

  static const String name = 'TermsAndConditionsRoute';
}

class TermsAndConditionsRouteArgs {
  const TermsAndConditionsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'TermsAndConditionsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: '',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute({List<PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [FavouritesTipDetailsScreen]
class FavoritesTipDetailsScreen
    extends PageRouteInfo<FavoritesTipDetailsScreenArgs> {
  FavoritesTipDetailsScreen({
    required ShowImageTipDetailsType showTipType,
    Tip? tip,
    Key? key,
  }) : super(
          FavoritesTipDetailsScreen.name,
          path: 'favourite_images',
          args: FavoritesTipDetailsScreenArgs(
            showTipType: showTipType,
            tip: tip,
            key: key,
          ),
        );

  static const String name = 'FavoritesTipDetailsScreen';
}

class FavoritesTipDetailsScreenArgs {
  const FavoritesTipDetailsScreenArgs({
    required this.showTipType,
    this.tip,
    this.key,
  });

  final ShowImageTipDetailsType showTipType;

  final Tip? tip;

  final Key? key;

  @override
  String toString() {
    return 'FavoritesTipDetailsScreenArgs{showTipType: $showTipType, tip: $tip, key: $key}';
  }
}

/// generated route for
/// [ImageTipDetailsScreen]
class HomeTipsScreenRoute extends PageRouteInfo<HomeTipsScreenRouteArgs> {
  HomeTipsScreenRoute({
    required ShowImageTipDetailsType showTipType,
    Tip? tip,
    Key? key,
  }) : super(
          HomeTipsScreenRoute.name,
          path: 'images',
          args: HomeTipsScreenRouteArgs(
            showTipType: showTipType,
            tip: tip,
            key: key,
          ),
        );

  static const String name = 'HomeTipsScreenRoute';
}

class HomeTipsScreenRouteArgs {
  const HomeTipsScreenRouteArgs({
    required this.showTipType,
    this.tip,
    this.key,
  });

  final ShowImageTipDetailsType showTipType;

  final Tip? tip;

  final Key? key;

  @override
  String toString() {
    return 'HomeTipsScreenRouteArgs{showTipType: $showTipType, tip: $tip, key: $key}';
  }
}

/// generated route for
/// [VideosDetailsScreen]
class HomeVideosScreenRoute extends PageRouteInfo<void> {
  const HomeVideosScreenRoute()
      : super(
          HomeVideosScreenRoute.name,
          path: 'videos',
        );

  static const String name = 'HomeVideosScreenRoute';
}

/// generated route for
/// [FavouritesTipSimpleListScreen]
class HomeFavouritesTipsScreenRoute extends PageRouteInfo<void> {
  const HomeFavouritesTipsScreenRoute()
      : super(
          HomeFavouritesTipsScreenRoute.name,
          path: 'favourites',
        );

  static const String name = 'HomeFavouritesTipsScreenRoute';
}

/// generated route for
/// [AboutScreen]
class HomeAboutScreenRoute extends PageRouteInfo<void> {
  const HomeAboutScreenRoute()
      : super(
          HomeAboutScreenRoute.name,
          path: 'about',
        );

  static const String name = 'HomeAboutScreenRoute';
}
