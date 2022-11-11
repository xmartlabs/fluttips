import 'dart:developer';

import 'package:flutter_template/core/model/tip.dart';
import 'package:flutter_template/core/source/remoteSource/tip_remote_source.dart';
import 'package:stock/stock.dart';
import 'package:flutter_template/core/source/localSource/tips_local_source.dart';
import 'package:flutter_template/core/model/db/tip_db_entity.dart';
import 'package:flutter_template/core/model/serializer/tip_serializer.dart';

class TipRepository {
  //ignore: unused_field
  final TipRemoteSource _tipRemoteSource;
  //ignore: unused_field
  final TipsLocalSource _tipsLocalSource;
  final Stock<dynamic, List<Tip>> _tipListStore;

  TipRepository(this._tipsLocalSource, this._tipRemoteSource)
      : _tipListStore = Stock(
          fetcher: Fetcher.ofFuture((_) => _tipRemoteSource.getTips()),
          sourceOfTruth: SourceOfTruth<dynamic, List<TipDbEntity>>(
            reader: (_) => _tipsLocalSource.getTips(),
            writer: (_, value) => _tipsLocalSource.replaceAndUpdateTips(value!),
          ).mapToUsingMapper(TipListStockTypeMapper()),
        );

  Stream<StockResponse<List<Tip>>> getTips() => _tipListStore.stream(null);

  Future<void> changeFavouriteTip(Tip tip) async{
    final tips = await _tipsLocalSource.getTipById(tip.id);
    final tipToUpdate = tips.first;
    tipToUpdate.favourite = !tipToUpdate.favourite;
    await _tipsLocalSource.insertTips([tipToUpdate]);
  }
}
