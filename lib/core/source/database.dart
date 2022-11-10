import 'dart:async';
import 'package:floor/floor.dart';
import 'package:flutter_template/core/model/db/tip_db_entity.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:flutter_template/core/source/localSource/tips_local_source.dart';

part 'database.g.dart';

@Database(version: 1, entities: [TipDbEntity])
abstract class AppDatabase extends FloorDatabase {
  TipsLocalSource get tipsLocalSource;

  Future<void> clearAllTables() => database.delete('tips');
}
