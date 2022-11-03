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
        child: CatalogScreen(),
      );
    },
    UnauthenticatedRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SectionRouter(),
      );
    },
    AuthenticatedRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SectionRouter(),
      );
    },
    NavBar.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: AppNavBar(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    Home.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ImagesScreen(),
      );
    },
    Video.name: (routeData) {
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
              NavBar.name,
              path: '',
              parent: AuthenticatedRouter.name,
              children: [
                RouteConfig(
                  '#redirect',
                  path: '',
                  parent: NavBar.name,
                  redirectTo: 'images',
                  fullMatch: true,
                ),
                RouteConfig(
                  Home.name,
                  path: 'images',
                  parent: NavBar.name,
                ),
                RouteConfig(
                  Video.name,
                  path: 'videos',
                  parent: NavBar.name,
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
/// [AppNavBar]
class NavBar extends PageRouteInfo<void> {
  const NavBar({List<PageRouteInfo>? children})
      : super(
          NavBar.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'NavBar';
}

/// generated route for
/// [ImagesScreen]
class Home extends PageRouteInfo<void> {
  const Home()
      : super(
          Home.name,
          path: 'images',
        );

  static const String name = 'Home';
}

/// generated route for
/// [VideosScreen]
class Video extends PageRouteInfo<void> {
  const Video()
      : super(
          Video.name,
          path: 'videos',
        );

  static const String name = 'Video';
}
