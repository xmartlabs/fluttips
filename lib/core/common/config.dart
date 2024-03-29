// ignore_for_file: constant_identifier_names

import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:fluttips/core/common/extension/string_extensions.dart';
import 'package:fluttips/core/common/helper/enum_helpers.dart';
import 'package:fluttips/core/common/helper/env_helper.dart';

enum Environments {
  dev,
  prod,
}

extension EnviromentPath on Environments {
  String get fileName {
    switch (this) {
      case Environments.dev:
        return 'dev';
      case Environments.prod:
        return 'prod';
    }
  }

  String get path => '${Config._environmentFolder}/$fileName';
}

abstract class Config {
  static const debugMode = kDebugMode;
  static const firebaseEnabled = !debugMode;
  static const analyticsEnabled = !debugMode;

  // TODO: Add alternative for web
  static const crashlyticsEnabled = !kIsWeb && !debugMode;
  static bool bugseeEnabled =
      !kIsWeb && !debugMode && _environment == Environments.dev;

  static const String _environmentFolder = 'environments';
  static final num maxDatabaseIntValue = pow(2, 32) - 1;
  static const Duration durationAnimation = Duration(milliseconds: 150);
  static const Duration splashMinDuration = Duration(milliseconds: 300);

  static const String appEmail = 'fluttips@xmartlabs.com';

  static Uri imagesTipsRepository =
      Uri.parse('https://www.github.com/vandadnp/flutter-tips-and-tricks');
  static String widgetOfTheWeekPlaylistId =
      'PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG';
  static Uri widgetOfTheWeekLink = Uri.parse(
    'https://www.youtube.com/playlist?list=$widgetOfTheWeekPlaylistId',
  );
  static String fluttipsRepository = 'https://github.com/xmartlabs/fluttips';
  static Uri xmartlabsLinkedln =
      Uri.parse('https://www.linkedin.com/company/xmartlabs');
  static Uri xmartlabsInstagram =
      Uri.parse('https://www.instagram.com/xmartlabs/?hl=es');
  static Uri xmartlabsTwitter = Uri.parse('https://twitter.com/xmartlabs');

  static const databaseName = 'database.db';

  static const apiBaseUrl =
      'https://api.github.com/repos/vandadnp/flutter-tips-and-tricks';
  static const String imageBaseUrl =
      'https://raw.githubusercontent.com/vandadnp/flutter-tips-and-tricks/main/';
  static const String prefixUrl =
      'https://github.com/vandadnp/flutter-tips-and-tricks/blob/main/';
  static const String gitHubTipsNameFolder = 'tipsandtricks/';

  static String? bugseeAPIKey;

  static String? firebaseMessagingSenderId;
  static String? firebaseProjectId;
  static String? firebaseStorageBucket;
  static String? firebaseIosApiKey;
  static String? firebaseIosAppId;
  static String? firebaseIosIosClientId;
  static String? firebaseIosIosBundleId;
  static String? firebaseAndroidApiKey;
  static String? firebaseAndroidAppId;
  static String? firebaseWebApiKey;
  static String? firebaseWebAppId;
  static String? firebaseWebAuthDomain;
  static String? firebaseWebMeasurementId;
  static final _environment = enumFromString(
        Environments.values,
        const String.fromEnvironment('ENV'),
      ) ??
      Environments.dev;

  static Future<void> initialize() async {
    await _EnvConfig._setupEnv(_environment);
    _initializeEnvVariables();
  }

  static void _initializeEnvVariables() {
    if (!kIsWeb) {
      if (Platform.isAndroid) {
        bugseeAPIKey = _EnvConfig.getEnvVariable(
          _EnvConfig.ENV_KEY_BUGSEE_ANDROID_API_KEY,
        );
      } else if (Platform.isIOS) {
        bugseeAPIKey =
            _EnvConfig.getEnvVariable(_EnvConfig.ENV_KEY_BUGSEE_IOS_API_KEY);
      }
    }
    _initializeFirebaseEnvVariables();
  }

  static void _initializeFirebaseEnvVariables() {
    firebaseProjectId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_PROJECT_ID,
    );
    firebaseMessagingSenderId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_MESSAGE_SENDER_ID,
    );
    firebaseStorageBucket = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_STORAGE_BUCKET,
    );
    firebaseIosApiKey = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_IOS_API_KEY,
    );
    firebaseIosAppId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_IOS_APP_ID,
    );
    firebaseIosIosClientId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_IOS_IOS_CLIENT_ID,
    );
    firebaseIosIosBundleId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_IOS_IOS_BUNDLE_ID,
    );
    firebaseAndroidApiKey = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_ANDROID_API_KEY,
    );
    firebaseAndroidAppId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_ANDROID_APP_ID,
    );
    firebaseWebApiKey = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_WEB_API_KEY,
    );
    firebaseWebAppId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_WEB_APP_ID,
    );
    firebaseWebAuthDomain = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_WEB_AUTH_DOMAIN,
    );
    firebaseWebMeasurementId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_WEB_MEASUREMENT_ID,
    );
  }
}

abstract class _EnvConfig {
  static const ENV_KEY_BUGSEE_IOS_API_KEY = 'BUGSEE_IOS_API_KEY';
  static const ENV_KEY_BUGSEE_ANDROID_API_KEY = 'BUGSEE_ANDROID_API_KEY';

  // Firebase Common
  static const ENV_KEY_FIREBASE_PROJECT_ID = 'FIREBASE_PROJECT_ID';
  static const ENV_KEY_FIREBASE_MESSAGE_SENDER_ID =
      'FIREBASE_MESSAGE_SENDER_ID';
  static const ENV_KEY_FIREBASE_STORAGE_BUCKET = 'FIREBASE_STORAGE_BUCKET';

  // Firebase IOs
  static const ENV_KEY_FIREBASE_IOS_API_KEY = 'FIREBASE_IOS_API_KEY';
  static const ENV_KEY_FIREBASE_IOS_APP_ID = 'FIREBASE_IOS_APP_ID';
  static const ENV_KEY_FIREBASE_IOS_IOS_CLIENT_ID =
      'FIREBASE_IOS_IOS_CLIENT_ID';
  static const ENV_KEY_FIREBASE_IOS_IOS_BUNDLE_ID =
      'FIREBASE_IOS_IOS_BUNDLE_ID';

  // Firebase Android
  static const ENV_KEY_FIREBASE_ANDROID_API_KEY = 'FIREBASE_ANDROID_API_KEY';
  static const ENV_KEY_FIREBASE_ANDROID_APP_ID = 'FIREBASE_ANDROID_APP_ID';

  static const ENV_KEY_FIREBASE_WEB_API_KEY = 'FIREBASE_WEB_API_KEY';
  static const ENV_KEY_FIREBASE_WEB_APP_ID = 'FIREBASE_WEB_APP_ID';
  static const ENV_KEY_FIREBASE_WEB_AUTH_DOMAIN = 'FIREBASE_WEB_AUTH_DOMAIN';
  static const ENV_KEY_FIREBASE_WEB_MEASUREMENT_ID =
      'FIREBASE_WEB_MEASUREMENT_ID';

  static const systemEnv = {
    ENV_KEY_BUGSEE_IOS_API_KEY:
        String.fromEnvironment(ENV_KEY_BUGSEE_IOS_API_KEY),
    ENV_KEY_BUGSEE_ANDROID_API_KEY:
        String.fromEnvironment(ENV_KEY_BUGSEE_ANDROID_API_KEY),

    // Firebase Common
    ENV_KEY_FIREBASE_PROJECT_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_PROJECT_ID),
    ENV_KEY_FIREBASE_MESSAGE_SENDER_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_MESSAGE_SENDER_ID),
    ENV_KEY_FIREBASE_STORAGE_BUCKET:
        String.fromEnvironment(ENV_KEY_FIREBASE_STORAGE_BUCKET),

    // Firebase IOS
    ENV_KEY_FIREBASE_IOS_API_KEY:
        String.fromEnvironment(ENV_KEY_FIREBASE_IOS_API_KEY),
    ENV_KEY_FIREBASE_IOS_APP_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_IOS_APP_ID),
    ENV_KEY_FIREBASE_IOS_IOS_CLIENT_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_IOS_IOS_CLIENT_ID),
    ENV_KEY_FIREBASE_IOS_IOS_BUNDLE_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_IOS_IOS_BUNDLE_ID),

    // Firebase Android
    ENV_KEY_FIREBASE_ANDROID_API_KEY:
        String.fromEnvironment(ENV_KEY_FIREBASE_ANDROID_API_KEY),
    ENV_KEY_FIREBASE_ANDROID_APP_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_ANDROID_APP_ID),

    // Firebase Android
    ENV_KEY_FIREBASE_WEB_API_KEY:
        String.fromEnvironment(ENV_KEY_FIREBASE_WEB_API_KEY),
    ENV_KEY_FIREBASE_WEB_APP_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_WEB_APP_ID),
    ENV_KEY_FIREBASE_WEB_AUTH_DOMAIN:
        String.fromEnvironment(ENV_KEY_FIREBASE_WEB_AUTH_DOMAIN),
    ENV_KEY_FIREBASE_WEB_MEASUREMENT_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_WEB_MEASUREMENT_ID),
  };

  static final Map<String, String> _envFileEnv = {};

  static String? getEnvVariable(String key) =>
      _EnvConfig.systemEnv[key].ifNullOrBlank(() => _envFileEnv[key]);

  static Future<void> _setupEnv(Environments env) async {
    _envFileEnv
      ..addAll(await loadEnvs('${Config._environmentFolder}/default.env'))
      ..addAll(await loadEnvs('${env.path}.env'))
      ..addAll(await loadEnvs('${env.path}.private.env'));
  }
}
