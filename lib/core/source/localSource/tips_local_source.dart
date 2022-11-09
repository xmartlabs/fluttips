import 'dart:async';

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
  Future<void> replaceAndUpdateTips(List<TipDbEntity> tips) async {
    final oldTips = await getTips().first;
    var mapTips = <String, TipDbEntity>{};
    mapTips = Map.fromIterable(oldTips, key: (e) => e.id);

    final mergedList = tips.map((value) => updateTip(value, mapTips[value.id]));

    if (mergedList.isNotEmpty) {
      await deleteAllTips();
      await insertTips(mergedList.toList());
    }
    if (mergedList.isEmpty) {
      changeListener.add('tips');
    }
  }

  TipDbEntity updateTip(TipDbEntity newTip, TipDbEntity? oldTip) {
    if (oldTip != null) {
      newTip
        ..randomId = oldTip.randomId
        ..favourite = oldTip.favourite;
    }
    return newTip;
  }
}
