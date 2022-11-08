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
    HomeScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    TipsScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TipsScreen(),
      );
    },
    VideosScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const VideosScreen(),
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
                  TipsScreenRoute.name,
                  path: 'tips',
                  parent: HomeScreenRoute.name,
                ),
                RouteConfig(
                  VideosScreenRoute.name,
                  path: 'videos',
                  parent: HomeScreenRoute.name,
                ),
              ],
            )
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
  const UnauthenticatedRouter()
      : super(
          UnauthenticatedRouter.name,
          path: '/section-router',
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
/// [TipsScreen]
class TipsScreenRoute extends PageRouteInfo<void> {
  const TipsScreenRoute()
      : super(
          TipsScreenRoute.name,
          path: 'tips',
        );

  static const String name = 'TipsScreenRoute';
}

/// generated route for
/// [VideosScreen]
class VideosScreenRoute extends PageRouteInfo<void> {
  const VideosScreenRoute()
      : super(
          VideosScreenRoute.name,
          path: 'videos',
        );

  static const String name = 'VideosScreenRoute';
}
