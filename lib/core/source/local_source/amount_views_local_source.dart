import 'dart:async';

import 'package:floor/floor.dart';
import 'package:flutter_template/core/model/db/tip_amount_views_db_entity.dart';

@dao
abstract class AmountViewsLocalSource {
  @Query(
    'SELECT * FROM ${TipAmountViewsDbEntity.tableName} ORDER BY amountViews',
  )
  Stream<List<TipAmountViewsDbEntity>> getAmountsView();

  @Query('SELECT * FROM ${TipAmountViewsDbEntity.tableName} WHERE tipId = :id')
  Future<TipAmountViewsDbEntity?> getAmountsViewById(String id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertAmount(TipAmountViewsDbEntity amountView);
}
