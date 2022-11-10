import 'dart:async';

import 'package:dartx/dartx.dart';
import 'package:floor/floor.dart';
import 'package:flutter_template/core/model/db/amount_views_db_entity.dart';

@dao
abstract class AmountViewsLocalSource {
  late final StreamController<String> changeListener;

  @Query('SELECT * FROM AmountViews ORDER BY amountViews')
  Stream<List<AmountViewsDbEntity>> getAmountsView();

  @Query('SELECT * FROM AmountViews WHERE id = :id')
  Future<List<AmountViewsDbEntity>> getAmountsViewById(String id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertAmounts(List<AmountViewsDbEntity> tips);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertAmount(AmountViewsDbEntity amountView);

  @Query('DELETE FROM AmountViews')
  Future<void> deleteAllAmounts();

  @transaction
  Future<void> replaceAndUpdateAmounts(
    List<AmountViewsDbEntity> amounts,
  ) async {
    final oldAmounts = await getAmountsView().first;
    final mapAmounts = oldAmounts.associateBy((e) => e.id);
    final mergedList = amounts.map(
      (value) =>
          mergeTipData(newAmount: value, oldAmount: mapAmounts[value.id]),
    );

    await deleteAllAmounts();
    if (mergedList.isNotEmpty) {
      await insertAmounts(mergedList.toList());
    }
    if (mergedList.isEmpty && oldAmounts.isNotEmpty) {
      changeListener.add('AmountViews');
    }
  }

  AmountViewsDbEntity mergeTipData({
    required AmountViewsDbEntity newAmount,
    AmountViewsDbEntity? oldAmount,
  }) =>
      newAmount..amountViews = oldAmount?.amountViews ?? newAmount.amountViews;
}
