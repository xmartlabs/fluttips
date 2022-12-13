import 'dart:async';

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

Future<void> main() async {
  final url = 'https://raw.githubusercontent.com/vandadnp/flutter-tips-and-tricks/main/tipsandtricks/' + Uri.encodeComponent('unwrap-list-t?-?-in-dart/unwrap-list-t?-?-in-dart.jpg');
  print(url);
  await runZonedGuarded(
    () async {
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      await _initSdks();

      Config.bugseeEnabled
          ? await _launchBugsee((_) => runApp(const MyApp()))
          : runApp(const MyApp());

      FlutterNativeSplash.remove();
    },
    (exception, stackTrace) =>
        Logger.fatal(error: exception, stackTrace: stackTrace),
  );
}

Future<void> _launchBugsee(void Function(bool isBugseeLaunched) appRunner) =>
    Bugsee.launch(Config.bugseeAPIKey!, appRunCallback: appRunner);

Future _initSdks() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Config.initialize();
  await _initFirebaseCore();
  await Logger.init();

  await Future.wait([
    DiProvider.init(),
    _initFirebaseSdks(),
  ]);
}

Future<void> _initFirebaseCore() async {
  if (Config.firebaseEnabled) {
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
