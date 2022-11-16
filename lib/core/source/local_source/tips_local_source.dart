import 'dart:async';

import 'package:dartx/dartx.dart';
import 'package:floor/floor.dart';
import 'package:flutter_template/core/model/db/tip_db_entity.dart';

@dao
abstract class TipsLocalSource {
  late final StreamController<String> changeListener;

  @Query('SELECT * FROM ${TipDbEntity.tableName} ORDER BY randomId')
  Stream<List<TipDbEntity>> getTips();

  @Query('SELECT * FROM ${TipDbEntity.tableName} WHERE id = :id')
  Future<List<TipDbEntity>> getTipById(String id);

  @Query(
    'SELECT * FROM ${TipDbEntity.tableName} WHERE favouriteDate IS NOT NULL',
  )
  Stream<List<TipDbEntity>> getFavouritesTips();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertTips(List<TipDbEntity> tips);

  @Update(onConflict: OnConflictStrategy.abort)
  Future<void> updateTip(TipDbEntity tip);

  @Query('DELETE FROM ${TipDbEntity.tableName}')
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
      changeListener.add(TipDbEntity.tableName);
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
