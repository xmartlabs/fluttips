import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/core/common/config.dart';
import 'package:fluttips/core/common/logger.dart';
import 'package:fluttips/core/di/di_provider.dart';
import 'package:fluttips/firebase_options.dart';
import 'package:fluttips/ui/main/main_screen.dart';

import 'package:bugsee_flutter/bugsee.dart';

Future<void> launchBugsee(
  void Function(bool isBugseeLaunched) appRunner,
) =>
    Bugsee.launch(Config.tokenBugsee!, appRunCallback: appRunner);

Future<void> main() async {
  await runZonedGuarded(
    () async {
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      await _initSdks();

      Config.debugMood
          ? await launchBugsee((bool isBueLaunched) async {
              runApp(const MyApp());
            })
          : runApp(const MyApp());

      FlutterNativeSplash.remove();
    },
    (exception, stackTrace) =>
        Logger.fatal(error: exception, stackTrace: stackTrace),
  );
}

Future _initSdks() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Logger.init();
  await Config.initialize();
  await _initFirebaseCore();

  await Future.wait([
    DiProvider.init(),
    _initFirebaseSdks(),
  ]);
}

Future<void> _initFirebaseCore() async {
  if (!Config.debugMode) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}

// ignore: avoid-redundant-async
Future _initFirebaseSdks() async {
  // TODO: Add Craslytics, Analytics and other sdks that the project needs
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(812, 360),
        minTextAdapt: false,
        splitScreenMode: false,
        builder: (_, __) => const MainScreen(),
      );
}
