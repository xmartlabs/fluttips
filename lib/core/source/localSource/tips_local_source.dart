import 'dart:async';

import 'package:floor/floor.dart';
import 'package:flutter_template/core/model/db/tip_db_entity.dart';

@dao
abstract class TipsLocalSource {

  late final StreamController<String> changeListener;

  @Query('SELECT * FROM tips')
  Stream<List<TipDbEntity>> getTips();

  @Query('SELECT * FROM tips WHERE name = :name')
  Stream<TipDbEntity?> findTipByName(String name);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertTips(List<TipDbEntity> tips);

  @Query('DELETE FROM tips')
  Future<void> deleteAllTips();

  @transaction
  Future<void> replaceTips(List<TipDbEntity>? tips) async {
    await deleteAllTips();
    if (tips != null) {
      await insertTips(tips);
    }
    if (tips == null || tips.isEmpty) {
      changeListener.add('tips');
    }
  }
}


