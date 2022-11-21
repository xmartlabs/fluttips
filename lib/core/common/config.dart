// ignore_for_file: constant_identifier_names

import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:fluttips/core/common/extension/string_extensions.dart';
import 'package:fluttips/core/common/helper/enum_helpers.dart';
import 'package:fluttips/core/common/helper/env_helper.dart';
import 'package:fluttips/gen/assets.gen.dart';

enum Environments {
  development,
  production,
}

extension EnviromentPath on Environments {
  String get fileName {
    switch (this) {
      case Environments.development:
        return 'dev';
      case Environments.production:
        return 'prod';
    }
  }

  String get path => 'assets/environments/$fileName';
}

abstract class Config {
  static late String apiBaseUrl;
  static final num maxDatabaseIntValue = pow(2, 32) - 1;
  static String imageBaseUrl =
      'https://raw.githubusercontent.com/vandadnp/flutter-tips-and-tricks/main/';
  static String prefixUrl =
      'https://github.com/vandadnp/flutter-tips-and-tricks/blob/main/';
  static String gitHubTipsNameFolder = 'tipsandtricks/';

  static bool get debugMode => kDebugMode;

  static String? firebaseMessagingSenderId;
  static String? firebaseProjectId;
  static String? firebaseStorageBucket;
  static String? firebaseIosApiKey;
  static String? firebaseIosAppId;
  static String? firebaseIosIosClientId;
  static String? firebaseIosIosBundleId;
  static String? firebaseAndroidApiKey;
  static String? firebaseAndroidAppId;

  static final _environment = enumFromString(
        Environments.values,
        const String.fromEnvironment('ENV'),
      ) ??
      Environments.development;

  static Future<void> initialize() async {
    await _EnvConfig._setupEnv(_environment);
    _initializeEnvVariables();
  }

  static void _initializeEnvVariables() {
    apiBaseUrl = _EnvConfig.getEnvVariable(_EnvConfig.ENV_KEY_API_BASE_URL)!;
    if (_environment == Environments.production) {
      _initializeFirebaseProdEnvVariables();
    } else {
      _initializeFirebaseDevEnvVariables();
    }
  }

  static void _initializeFirebaseDevEnvVariables() {
    firebaseProjectId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_DEV_PROJECT_ID,
    );
    firebaseMessagingSenderId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_DEV_MESSAGE_SENDER_ID,
    );
    firebaseStorageBucket = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_DEV_STORAGE_BUCKET,
    );
    firebaseIosApiKey = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_IOS_DEV_API_KEY,
    );
    firebaseIosAppId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_IOS_DEV_APP_ID,
    );
    firebaseIosIosClientId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_IOS_DEV_IOS_CLIENT_ID,
    );
    firebaseIosIosBundleId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_IOS_DEV_IOS_BUNDLE_ID,
    );
    firebaseAndroidApiKey = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_ANDROID_DEV_API_KEY,
    );
    firebaseAndroidAppId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_ANDROID_DEV_APP_ID,
    );
  }

  static void _initializeFirebaseProdEnvVariables() {
    firebaseProjectId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_PROD_PROJECT_ID,
    );
    firebaseMessagingSenderId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_PROD_MESSAGE_SENDER_ID,
    );
    firebaseStorageBucket = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_PROD_STORAGE_BUCKET,
    );
    firebaseIosApiKey = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_IOS_PROD_API_KEY,
    );
    firebaseIosAppId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_IOS_PROD_APP_ID,
    );
    firebaseIosIosClientId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_IOS_PROD_IOS_CLIENT_ID,
    );
    firebaseIosIosBundleId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_IOS_PROD_IOS_BUNDLE_ID,
    );
    firebaseAndroidApiKey = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_ANDROID_PROD_API_KEY,
    );
    firebaseAndroidAppId = _EnvConfig.getEnvVariable(
      _EnvConfig.ENV_KEY_FIREBASE_ANDROID_PROD_APP_ID,
    );
  }
}

abstract class _EnvConfig {
  static const ENV_KEY_API_BASE_URL = 'API_BASE_URL';

  // Firebase IOS Production
  static const ENV_KEY_FIREBASE_PROD_PROJECT_ID =
      'ENV_KEY_FIREBASE_PROD_PROJECT_ID';
  static const ENV_KEY_FIREBASE_PROD_MESSAGE_SENDER_ID =
      'ENV_KEY_FIREBASE_PROD_MESSAGE_SENDER_ID';
  static const ENV_KEY_FIREBASE_PROD_STORAGE_BUCKET =
      'ENV_KEY_FIREBASE_PROD_STORAGE_BUCKET';

  static const ENV_KEY_FIREBASE_IOS_PROD_API_KEY =
      'ENV_KEY_FIREBASE_IOS_PROD_API_KEY';
  static const ENV_KEY_FIREBASE_IOS_PROD_APP_ID =
      'ENV_KEY_FIREBASE_IOS_PROD_APP_ID';
  static const ENV_KEY_FIREBASE_IOS_PROD_IOS_CLIENT_ID =
      'ENV_KEY_FIREBASE_IOS_PROD_IOS_CLIENT_ID';
  static const ENV_KEY_FIREBASE_IOS_PROD_IOS_BUNDLE_ID =
      'ENV_KEY_FIREBASE_IOS_PROD_IOS_BUNDLE_ID';

  // Firebase Android Production
  static const ENV_KEY_FIREBASE_ANDROID_PROD_API_KEY =
      'ENV_KEY_FIREBASE_ANDROID_PROD_API_KEY';
  static const ENV_KEY_FIREBASE_ANDROID_PROD_APP_ID =
      'ENV_KEY_FIREBASE_ANDROID_PROD_APP_ID';

  // Firebase IOS Dev
  static const ENV_KEY_FIREBASE_DEV_PROJECT_ID =
      'ENV_KEY_FIREBASE_DEV_PROJECT_ID';
  static const ENV_KEY_FIREBASE_DEV_MESSAGE_SENDER_ID =
      'ENV_KEY_FIREBASE_DEV_MESSAGE_SENDER_ID';
  static const ENV_KEY_FIREBASE_DEV_STORAGE_BUCKET =
      'ENV_KEY_FIREBASE_DEV_STORAGE_BUCKET';

  static const ENV_KEY_FIREBASE_IOS_DEV_API_KEY =
      'ENV_KEY_FIREBASE_IOS_DEV_API_KEY';
  static const ENV_KEY_FIREBASE_IOS_DEV_APP_ID =
      'ENV_KEY_FIREBASE_IOS_DEV_APP_ID';
  static const ENV_KEY_FIREBASE_IOS_DEV_IOS_CLIENT_ID =
      'ENV_KEY_FIREBASE_IOS_DEV_IOS_CLIENT_ID';
  static const ENV_KEY_FIREBASE_IOS_DEV_IOS_BUNDLE_ID =
      'ENV_KEY_FIREBASE_IOS_DEV_IOS_BUNDLE_ID';

  // Firebase Android Dev
  static const ENV_KEY_FIREBASE_ANDROID_DEV_API_KEY =
      'ENV_KEY_FIREBASE_ANDROID_DEV_API_KEY';
  static const ENV_KEY_FIREBASE_ANDROID_DEV_APP_ID =
      'ENV_KEY_FIREBASE_ANDROID_DEV_APP_ID';

  static const systemEnv = {
    ENV_KEY_API_BASE_URL: String.fromEnvironment(ENV_KEY_API_BASE_URL),

    // Firebase Common
    ENV_KEY_FIREBASE_PROD_PROJECT_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_PROD_PROJECT_ID),
    ENV_KEY_FIREBASE_PROD_MESSAGE_SENDER_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_PROD_MESSAGE_SENDER_ID),
    ENV_KEY_FIREBASE_PROD_STORAGE_BUCKET:
        String.fromEnvironment(ENV_KEY_FIREBASE_PROD_STORAGE_BUCKET),

    // Firebase Prod IOS
    ENV_KEY_FIREBASE_IOS_PROD_API_KEY:
        String.fromEnvironment(ENV_KEY_FIREBASE_IOS_PROD_API_KEY),
    ENV_KEY_FIREBASE_IOS_PROD_APP_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_IOS_PROD_APP_ID),
    ENV_KEY_FIREBASE_IOS_PROD_IOS_CLIENT_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_IOS_PROD_IOS_CLIENT_ID),
    ENV_KEY_FIREBASE_IOS_PROD_IOS_BUNDLE_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_IOS_PROD_IOS_BUNDLE_ID),

    // Firebase Prod Android
    ENV_KEY_FIREBASE_ANDROID_PROD_API_KEY:
        String.fromEnvironment(ENV_KEY_FIREBASE_ANDROID_PROD_API_KEY),
    ENV_KEY_FIREBASE_ANDROID_PROD_APP_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_ANDROID_PROD_APP_ID),

    // Firebase Dev Common
    ENV_KEY_FIREBASE_DEV_PROJECT_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_DEV_PROJECT_ID),
    ENV_KEY_FIREBASE_DEV_MESSAGE_SENDER_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_DEV_MESSAGE_SENDER_ID),
    ENV_KEY_FIREBASE_DEV_STORAGE_BUCKET:
        String.fromEnvironment(ENV_KEY_FIREBASE_DEV_STORAGE_BUCKET),

    // Firebase Dev IOS
    ENV_KEY_FIREBASE_IOS_DEV_API_KEY:
        String.fromEnvironment(ENV_KEY_FIREBASE_IOS_DEV_API_KEY),
    ENV_KEY_FIREBASE_IOS_DEV_APP_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_IOS_DEV_APP_ID),
    ENV_KEY_FIREBASE_IOS_DEV_IOS_CLIENT_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_IOS_DEV_IOS_CLIENT_ID),
    ENV_KEY_FIREBASE_IOS_DEV_IOS_BUNDLE_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_IOS_DEV_IOS_BUNDLE_ID),

    // Firebase Dev Android
    ENV_KEY_FIREBASE_ANDROID_DEV_API_KEY:
        String.fromEnvironment(ENV_KEY_FIREBASE_ANDROID_DEV_API_KEY),
    ENV_KEY_FIREBASE_ANDROID_DEV_APP_ID:
        String.fromEnvironment(ENV_KEY_FIREBASE_ANDROID_DEV_APP_ID),
  };

  static final Map<String, String> _envFileEnv = {};

  static String? getEnvVariable(String key) =>
      _EnvConfig.systemEnv[key].ifNullOrBlank(() => _envFileEnv[key]);

  static Future<void> _setupEnv(Environments env) async {
    _envFileEnv
      ..addAll(await loadEnvs(Assets.environments.env))
      ..addAll(await loadEnvs('${env.path}.env'));
  }
}
