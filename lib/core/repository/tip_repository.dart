import 'package:flutter_template/core/model/tip.dart';
import 'package:flutter_template/core/source/remoteSource/tip_remote_source.dart';
import 'package:stock/stock.dart';

import 'package:flutter_template/core/source/localSource/tips_local_source.dart';

import 'package:flutter_template/core/model/db/tip_db_entity.dart';

import 'package:flutter_template/core/model/serializer/tip_serializer.dart';

class TipRepository {
  final TipRemoteSource _tipRemoteSource;

  final TipsLocalSource _tipsLocalSource;

  //TipRepository(this._tipRemoteSource, this._tipsLocalSource);

  //TODO: change to a stream in next PR with floor
  //Future<Iterable<Tip>> getTips() => _tipRemoteSource.getTips();


  final Stock<dynamic, List<Tip>> _store;

  TipRepository(this._tipsLocalSource, this._tipRemoteSource)
      : _store = Stock(
    fetcher: Fetcher.ofFuture(
          (_) => _tipRemoteSource.getTips(),
    ),
    sourceOfTruth: SourceOfTruth<dynamic, List<TipDbEntity>>(
      reader: (_) => _tipsLocalSource.getTips(),
      writer: (_, value) => _tipsLocalSource.replaceTips(value),
    ).mapToUsingMapper(TipListStockTypeMapper()),
  );

  Stream<List<Tip>> getTips() => _store
      .stream(null)
      .where((event) => event.isData)
      .map((event) => event.requireData());
}
