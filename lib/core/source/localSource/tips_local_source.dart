import 'dart:async';

import 'package:dartx/dartx.dart';
import 'package:floor/floor.dart';
import 'package:flutter_template/core/model/db/tip_db_entity.dart';

@dao
abstract class TipsLocalSource {
  late final StreamController<String> changeListener;

  @Query('SELECT * FROM tips ORDER BY randomId')
  Stream<List<TipDbEntity>> getTips();

  @Query('SELECT * FROM tips WHERE name = :name')
  Stream<TipDbEntity?> findTipByName(String name);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertTips(List<TipDbEntity> tips);

  @Query('DELETE FROM tips')
  Future<void> deleteAllTips();

  @transaction
  Future<void> replaceAndUpdateTips(List<TipDbEntity>? tips) async {
    final oldTips = await getTips().first;
    final mergedList = tips?.map((value) => updateTip(value, oldTips));
    if (mergedList != null) {
      await insertTips(mergedList.toList());
    }
    if (tips == null || tips.isEmpty) {
      changeListener.add('tips');
    }
  }

  TipDbEntity updateTip(TipDbEntity newTip, List<TipDbEntity> oldTips) {
    final tip = oldTips.firstOrNullWhere((element) => element.id == newTip.id);
    if (tip != null) {
      newTip
        ..randomId = tip.randomId
        ..favourite = tip.favourite;
    }
    return newTip;
  }
}
