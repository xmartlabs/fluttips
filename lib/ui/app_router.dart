import 'package:auto_route/auto_route.dart';
import 'package:flutter_template/ui/section/section_router.dart';
import 'package:flutter_template/ui/tips/tips_screen.dart';
import 'package:flutter_template/ui/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(
      name: 'UnauthenticatedRouter',
      page: SectionRouter,
      initial: true,
      children: [
        AutoRoute(
          path: AppRouter.TIPS_PATH,
          page: TipsScreen,
          initial: true,
        ),
      ],
    ),
    AutoRoute(
      name: 'AuthenticatedRouter',
      page: SectionRouter,
      children: [
        AutoRoute(
          path: AppRouter.WELCOME_PATH,
          page: WelcomeScreen,
          initial: true,
        ),
      ],
    )
  ],
)
class AppRouter extends _$AppRouter {
  static const TIPS_PATH = 'tips';
  static const WELCOME_PATH = 'welcome';
}
