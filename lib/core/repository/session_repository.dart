import 'dart:async';

import 'package:fluttips/core/di/di_provider.dart';
import 'package:fluttips/core/source/local_source/auth_local_source.dart';

import 'package:fluttips/core/model/onboarding_status.dart';

class SessionRepository {
  final AuthLocalSource _authLocalSource = DiProvider.get();

  Stream<AppSessionStatus> getSessionStatus() => _authLocalSource
      .getSessionStatus()
      .map((status) => status ?? AppSessionStatus.notOnboarded);

  Future<void> setOnboardingState(AppSessionStatus sessionStatus) =>
      _authLocalSource.setSessionStatus(sessionStatus);
}
