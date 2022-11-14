import 'dart:async';

import 'package:dartx/dartx.dart';
import 'package:floor/floor.dart';
import 'package:flutter_template/core/model/db/tip_db_entity.dart';

@dao
abstract class TipsLocalSource {
  late final StreamController<String> changeListener;

  @Query('SELECT * FROM tips ORDER BY randomId')
  Stream<List<TipDbEntity>> getTips();

  @Query('SELECT * FROM tips WHERE id = :id')
  Future<List<TipDbEntity>> getTipById(String id);

  @Query('SELECT * FROM tips WHERE name = :name')
  Stream<TipDbEntity?> findTipByName(String name);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertTips(List<TipDbEntity> tips);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateTip(TipDbEntity tip);

  @Query('DELETE FROM tips')
  Future<void> deleteAllTips();

  @transaction
  Future<void> replaceAndUpdateTips(List<TipDbEntity> tips) async {
    final oldTips = await getTips().first;
    final mapTips = oldTips.associateBy((e) => e.id);
    final mergedList = tips
        .map((value) => mergeTipData(newTip: value, oldTip: mapTips[value.id]));

    await deleteAllTips();
    if (mergedList.isNotEmpty) {
      await insertTips(mergedList.toList());
    }
    if (mergedList.isEmpty && oldTips.isNotEmpty) {
      changeListener.add('tips');
    }
  }

  TipDbEntity mergeTipData({
    required TipDbEntity newTip,
    TipDbEntity? oldTip,
  }) =>
      newTip
        ..randomId = oldTip?.randomId ?? newTip.randomId
        ..favouriteDate = oldTip?.favouriteDate ?? newTip.favouriteDate;
}
