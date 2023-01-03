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
    ListFavouritesTipsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ListFavouritesTipsScreenRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ListFavouritesTipsScreen(
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
        child: TipsScreen(
          showTipType: args.showTipType,
          tip: args.tip,
          key: args.key,
        ),
      );
    },
    HomeVideosScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const VideosScreen(),
      );
    },
    HomeFavouritesTipsScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FavouritesTipsScreen(),
      );
    },
    AboutFlowRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    AboutScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AboutScreen(),
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
                  AboutFlowRoute.name,
                  path: 'empty-router-page',
                  parent: HomeScreenRoute.name,
                  children: [
                    RouteConfig(
                      '#redirect',
                      path: '',
                      parent: AboutFlowRoute.name,
                      redirectTo: 'about',
                      fullMatch: true,
                    ),
                    RouteConfig(
                      AboutScreenRoute.name,
                      path: 'about',
                      parent: AboutFlowRoute.name,
                    ),
                    RouteConfig(
                      WebViewRoute.name,
                      path: 'webView',
                      parent: AboutFlowRoute.name,
                    ),
                  ],
                ),
              ],
            ),
            RouteConfig(
              ListFavouritesTipsScreenRoute.name,
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
/// [ListFavouritesTipsScreen]
class ListFavouritesTipsScreenRoute
    extends PageRouteInfo<ListFavouritesTipsScreenRouteArgs> {
  ListFavouritesTipsScreenRoute({
    required ShowTipsType showTipType,
    Tip? tip,
    Key? key,
  }) : super(
          ListFavouritesTipsScreenRoute.name,
          path: 'list_favourite',
          args: ListFavouritesTipsScreenRouteArgs(
            showTipType: showTipType,
            tip: tip,
            key: key,
          ),
        );

  static const String name = 'ListFavouritesTipsScreenRoute';
}

class ListFavouritesTipsScreenRouteArgs {
  const ListFavouritesTipsScreenRouteArgs({
    required this.showTipType,
    this.tip,
    this.key,
  });

  final ShowTipsType showTipType;

  final Tip? tip;

  final Key? key;

  @override
  String toString() {
    return 'ListFavouritesTipsScreenRouteArgs{showTipType: $showTipType, tip: $tip, key: $key}';
  }
}

/// generated route for
/// [TipsScreen]
class HomeTipsScreenRoute extends PageRouteInfo<HomeTipsScreenRouteArgs> {
  HomeTipsScreenRoute({
    required ShowTipsType showTipType,
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

  final ShowTipsType showTipType;

  final Tip? tip;

  final Key? key;

  @override
  String toString() {
    return 'HomeTipsScreenRouteArgs{showTipType: $showTipType, tip: $tip, key: $key}';
  }
}

/// generated route for
/// [VideosScreen]
class HomeVideosScreenRoute extends PageRouteInfo<void> {
  const HomeVideosScreenRoute()
      : super(
          HomeVideosScreenRoute.name,
          path: 'videos',
        );

  static const String name = 'HomeVideosScreenRoute';
}

/// generated route for
/// [FavouritesTipsScreen]
class HomeFavouritesTipsScreenRoute extends PageRouteInfo<void> {
  const HomeFavouritesTipsScreenRoute()
      : super(
          HomeFavouritesTipsScreenRoute.name,
          path: 'favourite',
        );

  static const String name = 'HomeFavouritesTipsScreenRoute';
}

/// generated route for
/// [EmptyRouterPage]
class AboutFlowRoute extends PageRouteInfo<void> {
  const AboutFlowRoute({List<PageRouteInfo>? children})
      : super(
          AboutFlowRoute.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'AboutFlowRoute';
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
