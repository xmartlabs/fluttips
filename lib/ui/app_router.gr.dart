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
    UnauthenticatedRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SectionRouter(),
      );
    },
    AuthenticatedRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SectionRouter(),
      );
    },
    Onboarding.name: (routeData) {
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
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          CatalogRouter.name,
          path: '/catalog-screen',
        ),
        RouteConfig(
          UnauthenticatedRouter.name,
          path: '/section-router',
          children: [
            RouteConfig(
              Onboarding.name,
              path: '',
              parent: UnauthenticatedRouter.name,
            )
          ],
        ),
        RouteConfig(
          AuthenticatedRouter.name,
          path: '/section-router',
          children: [
            RouteConfig(
              HomeScreenRoute.name,
              path: '',
              parent: AuthenticatedRouter.name,
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
              ],
            ),
            RouteConfig(
              ListFavouritesTipsScreenRoute.name,
              path: 'list_favourite',
              parent: AuthenticatedRouter.name,
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
class UnauthenticatedRouter extends PageRouteInfo<void> {
  const UnauthenticatedRouter({List<PageRouteInfo>? children})
      : super(
          UnauthenticatedRouter.name,
          path: '/section-router',
          initialChildren: children,
        );

  static const String name = 'UnauthenticatedRouter';
}

/// generated route for
/// [SectionRouter]
class AuthenticatedRouter extends PageRouteInfo<void> {
  const AuthenticatedRouter({List<PageRouteInfo>? children})
      : super(
          AuthenticatedRouter.name,
          path: '/section-router',
          initialChildren: children,
        );

  static const String name = 'AuthenticatedRouter';
}

/// generated route for
/// [OnboardingScreen]
class Onboarding extends PageRouteInfo<void> {
  const Onboarding()
      : super(
          Onboarding.name,
          path: '',
        );

  static const String name = 'Onboarding';
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
