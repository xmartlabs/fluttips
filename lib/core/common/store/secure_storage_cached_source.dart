import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:fluttips/core/source/providers/shared_preferences_provider.dart';
import 'package:stock/stock.dart';

class SharedPreferencesSourceOfTruth
    extends CachedSourceOfTruth<String, String> {
  final LocalSharedPreferencesStorage _storage;

  SharedPreferencesSourceOfTruth(this._storage);

  @override
  Stream<String?> reader(String key) async* {
    final stringValue = await _storage.read(key: key);
    setCachedValue(key, stringValue);
    yield* super.reader(key);
  }

  @override
  @protected
  Future<void> write(String key, String? value) async {
    await super.write(key, value);
    await _storage.write(key: key, value: value);
  }
}
