import 'dart:async';

import 'package:fluttips/core/model/onboarding_status.dart';
import 'package:fluttips/core/source/local_source/session_local_source.dart';

class SessionRepository {
  final SessionLocalSource _sessionLocalSource;

  SessionRepository(this._sessionLocalSource);

  Stream<AppSessionStatus> getSessionStatus() => _sessionLocalSource
      .getSessionStatus()
      .map((status) => status ?? AppSessionStatus.notOnboarded);

  Future<void> setSessionStatus(AppSessionStatus sessionStatus) =>
      _sessionLocalSource.setSessionStatus(sessionStatus);
}
