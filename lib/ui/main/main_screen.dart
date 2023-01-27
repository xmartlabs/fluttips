import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fluttips/core/di/di_provider.dart';
import 'package:fluttips/ui/app_router.dart';
import 'package:fluttips/ui/main/main_cubit.dart';
import 'package:fluttips/ui/resources.dart';
import 'package:fluttips/ui/theme/app_theme.dart';

import 'package:fluttips/core/model/onboarding_status.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => MainCubit(),
        child: _SplashContentScreen(),
      );
}

class _SplashContentScreen extends StatelessWidget {
  final router = DiProvider.get<AppRouter>();

  @override
  Widget build(BuildContext context) => BlocBuilder<MainCubit, MainBaseState>(
        builder: (context, state) => MaterialApp.router(
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown,
            },
          ),
          debugShowCheckedModeBanner: false,
          theme: AppTheme.provideAppTheme(context),
          routerDelegate: AutoRouterDelegate.declarative(
            router,
            routes: (_) => provideRoutes(state),
          ),
          routeInformationParser:
              router.defaultRouteParser(includePrefixMatches: true),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          builder: (context, child) {
            Resources.setup(context);
            return child!;
          },
        ),
      );

  List<PageRouteInfo<dynamic>> provideRoutes(MainBaseState state) {
    switch (state.appSessionStatus) {
      case AppSessionStatus.onboarded:
        return [const UserOnboardedRouter()];
      case AppSessionStatus.notOnboarded:
        return [const UncompletedOnboardingRouter()];
      case null:
        return [];
    }
  }
}
