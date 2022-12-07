import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttips/core/common/helper/enum_helpers.dart';
import 'package:fluttips/core/common/store/secure_storage_cached_source.dart';
import 'package:fluttips/core/model/onboarding_status.dart';
import 'package:stock/stock.dart';

class AuthLocalSource {
  static const _storageAuthPrefix = 'AuthLocalSource';
  static const _keyOnboarding = '$_storageAuthPrefix.hasCompletedOnboarding';

  late SourceOfTruth<String, AppSessionStatus> _userOnboardedStorage;

  AuthLocalSource(FlutterSecureStorage storage) {
    final secureStorage = SecuredStorageSourceOfTruth(storage);
    _userOnboardedStorage =
        secureStorage.mapToUsingMapper(_AppSessionStatusStockTypeMapper());
  }

  Stream<AppSessionStatus?> getSessionStatus()  =>
      _userOnboardedStorage.reader(_keyOnboarding);

  Future<void> setSessionStatus(AppSessionStatus status) async {
    await _userOnboardedStorage.write(_keyOnboarding, status);
  }

}

class _AppSessionStatusStockTypeMapper
    extends StockTypeMapper<String, AppSessionStatus> {
  @override
  AppSessionStatus fromInput(String value) {
    print('value $value');
    return enumFromString(AppSessionStatus.values, value) ??
      AppSessionStatus.notOnboarded;
  }

  @override
  String fromOutput(AppSessionStatus value) {
    print('value2 $value');
    return value.toString();
  }
}
