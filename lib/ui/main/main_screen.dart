import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fluttips/core/di/di_provider.dart';
import 'package:fluttips/ui/app_router.dart';
import 'package:fluttips/ui/resources.dart';
import 'package:fluttips/ui/theme/app_theme.dart';

class MainScreen extends StatelessWidget {
  final _router = DiProvider.get<AppRouter>();

  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
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
        routerDelegate: _router.delegate(),
        routeInformationParser:
            _router.defaultRouteParser(includePrefixMatches: true),
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
      );
}
