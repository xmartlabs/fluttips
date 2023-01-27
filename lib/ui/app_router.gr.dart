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
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

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
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: WebViewScreen(
          args.path,
          key: args.key,
        ),
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
    AboutScreenRoute.name: (routeData) {
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
          path: '/section-router',
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
          path: '/section-router',
          children: [
            RouteConfig(
              HomeScreenRoute.name,
              path: '',
              parent: UserOnboardedRouter.name,
              children: [
                RouteConfig(
                  '#redirect',
                  path: '',
                  parent: HomeScreenRoute.name,
                  redirectTo: 'about',
                  fullMatch: true,
                ),
                RouteConfig(
                  HomeTipsScreenRoute.name,
                  path: 'tips',
                  parent: HomeScreenRoute.name,
                ),
                RouteConfig(
                  HomeVideosScreenRoute.name,
                  path: 'videos',
                  parent: HomeScreenRoute.name,
                ),
                RouteConfig(
                  HomeFavouritesTipsScreenRoute.name,
                  path: 'favourite',
                  parent: HomeScreenRoute.name,
                ),
                RouteConfig(
                  AboutScreenRoute.name,
                  path: 'about',
                  parent: HomeScreenRoute.name,
                ),
              ],
            ),
            RouteConfig(
              WebViewRoute.name,
              path: 'webView',
              parent: UserOnboardedRouter.name,
            ),
            RouteConfig(
              FavoritesTipDetailsScreen.name,
              path: 'list_favourite',
              parent: UserOnboardedRouter.name,
            ),
          ],
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
          path: '/section-router',
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
          path: '/section-router',
          initialChildren: children,
        );

  static const String name = 'UserOnboardedRouter';
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
          path: '',
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [WebViewScreen]
class WebViewRoute extends PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    required String path,
    Key? key,
  }) : super(
          WebViewRoute.name,
          path: 'webView',
          args: WebViewRouteArgs(
            path: path,
            key: key,
          ),
        );

  static const String name = 'WebViewRoute';
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    required this.path,
    this.key,
  });

  final String path;

  final Key? key;

  @override
  String toString() {
    return 'WebViewRouteArgs{path: $path, key: $key}';
  }
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
          path: 'list_favourite',
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
          path: 'tips',
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
          path: 'favourite',
        );

  static const String name = 'HomeFavouritesTipsScreenRoute';
}

/// generated route for
/// [AboutScreen]
class AboutScreenRoute extends PageRouteInfo<void> {
  const AboutScreenRoute()
      : super(
          AboutScreenRoute.name,
          path: 'about',
        );

  static const String name = 'AboutScreenRoute';
}
