import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/ui/section/section_router.dart';
import 'package:flutter_template/ui/signin/signin_screen.dart';

import 'home/home_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(
      name: 'AuthenticatedRouter',
      page: SectionRouter,
      children: [
        AutoRoute(
          path: AppRouter.SIGN_IN_PATH,
          page: SignInScreen,
          initial: true,
        ),
      ],
    ),
    AutoRoute(
      name: 'UnauthenticatedRouter',
      page: SectionRouter,
      children: [
        AutoRoute(
          path: AppRouter.HOME_PATH,
          page: HomeScreen,
          initial: true,
        ),
      ],
    )
  ],
)
class AppRouter extends _$AppRouter {
  static const SIGN_IN_PATH = 'signin';
  static const HOME_PATH = 'home';
}
