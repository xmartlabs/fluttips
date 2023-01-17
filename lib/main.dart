import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttips/core/common/config.dart';
import 'package:fluttips/core/common/logger.dart';
import 'package:fluttips/core/di/di_provider.dart';
import 'package:fluttips/firebase_options.dart';
import 'package:fluttips/ui/main/main_screen.dart';

import 'package:bugsee_flutter/bugsee.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  final initialTime = DateTime.now();
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

      await _removeSplashScreen(initialTime);
    },
    (exception, stackTrace) =>
        Logger.fatal(error: exception, stackTrace: stackTrace),
  );
}

Future<void> clearSecureStorageOnReinstall() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  if (!(prefs.getBool(Config.key) != null)) {
    const FlutterSecureStorage storage = FlutterSecureStorage();
    await storage.deleteAll();
    await prefs.setBool(Config.key, true);
  }
}

Future<void> _removeSplashScreen(DateTime initialTime) => Future.delayed(
      Config.splashMinDuration - DateTime.now().difference(initialTime),
      FlutterNativeSplash.remove,
    );

Future<void> _launchBugsee(void Function(bool isBugseeLaunched) appRunner) =>
    Bugsee.launch(Config.bugseeAPIKey!, appRunCallback: appRunner);

Future _initSdks() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Config.initialize();
  await _initFirebaseCore();
  await Logger.init();
  await clearSecureStorageOnReinstall();

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
