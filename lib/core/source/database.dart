import 'dart:async';
import 'dart:io';
import 'package:floor/floor.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttips/core/model/db/tip_db_entity.dart';
import 'package:fluttips/core/source/local_source/converters/date_time_converter.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:fluttips/core/source/local_source/tips_local_source.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

part 'database.g.dart';

@TypeConverters([DateTimeConverter])
@Database(version: 1, entities: [TipDbEntity])
abstract class AppDatabase extends FloorDatabase {
  TipsLocalSource get tipsLocalSource;

  Future<void> clearAllTables() => database.delete(TipDbEntity.tableName);
}

// Used by database.g.dart to provide the web impl
// Depends on https://github.com/pinchbv/floor/pull/730/files
final sqflite.DatabaseFactory sqfliteDatabaseFactory = () {
  if (kIsWeb) {
    return databaseFactoryFfiWeb;
  } else if (Platform.isAndroid || Platform.isIOS) {
    return sqflite.databaseFactory;
  } else if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
    sqfliteFfiInit();
    return databaseFactoryFfi;
  } else {
    throw UnsupportedError(
      'Platform ${Platform.operatingSystem} is not supported by Floor.',
    );
  }
}();
