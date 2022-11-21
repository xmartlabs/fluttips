import 'dart:async';
import 'package:floor/floor.dart';
import 'package:fluttips/core/model/db/tip_amount_views_db_entity.dart';
import 'package:fluttips/core/model/db/tip_db_entity.dart';
import 'package:fluttips/core/source/local_source/converters/date_time_converter.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:fluttips/core/source/local_source/tips_local_source.dart';

import 'package:fluttips/core/source/local_source/amount_views_local_source.dart';

part 'database.g.dart';

@TypeConverters([DateTimeConverter])
@Database(version: 1, entities: [TipAmountViewsDbEntity, TipDbEntity])
abstract class AppDatabase extends FloorDatabase {
  TipsLocalSource get tipsLocalSource;

  AmountViewsLocalSource get amountLocalSource;

  Future<void> clearAllTables() async {
    await database.delete(TipDbEntity.tableName);
    await database.delete(TipAmountViewsDbEntity.tableName);
  }
}
