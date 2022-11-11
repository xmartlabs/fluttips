import 'package:dartx/dartx.dart';
import 'package:flutter_template/core/model/db/amount_views_db_entity.dart';
import 'package:flutter_template/core/model/tip.dart';
import 'package:flutter_template/core/source/localSource/amount_views_local_source.dart';
import 'package:flutter_template/core/source/remoteSource/tip_remote_source.dart';
import 'package:stock/stock.dart';
import 'package:flutter_template/core/source/localSource/tips_local_source.dart';
import 'package:flutter_template/core/model/db/tip_db_entity.dart';
import 'package:flutter_template/core/model/serializer/tip_serializer.dart';

class TipRepository {
  //ignore: unused_field
  final TipRemoteSource _tipRemoteSource;
  Set<String> tipsAlreadyVisited = {};

  //ignore: unused_field
  final AmountViewsLocalSource _amountViewsLocalSource;

  //ignore: unused_field
  final TipsLocalSource _tipsLocalSource;
  final Stock<dynamic, List<Tip>> _tipListStore;

  TipRepository(
    this._tipsLocalSource,
    this._tipRemoteSource,
    this._amountViewsLocalSource,
  ) : _tipListStore = Stock(
          fetcher: Fetcher.ofFuture((_) => _tipRemoteSource.getTips()),
          sourceOfTruth: SourceOfTruth<dynamic, List<TipDbEntity>>(
            reader: (_) => _tipsLocalSource.getTips(),
            writer: (_, value) =>
                _tipsLocalSource.replaceAndUpdateTips(value ?? []),
          ).mapToUsingMapper(TipListStockTypeMapper()),
        );

  Future<Map<String, int>> getVisited() async => {
        for (var e in await _amountViewsLocalSource.getAmountsView().first)
          e.id: e.amountViews,
      };

  Stream<StockResponse<List<Tip>>> getTips() async* {
    final visited = await getVisited();
    late List<Tip> sortData;
    yield* _tipListStore.stream(null).map(
      (event) {
        if (event.isData) {
          sortData = event
              .requireData()
              .sortedBy((e) => visited[e.id] ?? 0)
              .thenBy((element) => element.randomId)
              .toList();
        }
        return (event.isData)
            ? StockResponse.data(
                event.origin,
                sortData,
              )
            : event;
      },
    );
  }

  Future<void> changeAmountsTip(Tip tip) async {
    if (!pageAlreadyVisited(tip.id)) {
      final amountViewToUpdate =
          await _amountViewsLocalSource.getAmountsViewById(tip.id);
      var newAmount = amountViewToUpdate.firstOrNull;
      if (newAmount != null) {
        newAmount.amountViews++;
      } else {
        newAmount = AmountViewsDbEntity(id: tip.id, amountViews: 1);
      }
      await _amountViewsLocalSource.insertAmount(newAmount);
    }
  }

  bool pageAlreadyVisited(String id) {
    bool alreadyVisited = false;
    tipsAlreadyVisited.contains(id)
        ? alreadyVisited = true
        : tipsAlreadyVisited.add(id);
    return alreadyVisited;
  }
}
