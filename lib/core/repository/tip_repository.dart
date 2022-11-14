import 'package:dartx/dartx.dart';
import 'package:flutter_template/core/model/db/tip_amount_views_db_entity.dart';
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
  final AmountViewsLocalSource _amountViewsLocalSource;

  //ignore: unused_field
  final TipsLocalSource _tipsLocalSource;

  final Set<String> _tipsAlreadyVisited = {};
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

  Future<Map<String, int>> getVisited() =>
      _amountViewsLocalSource.getAmountsView().first.then(
            (values) => values.associate(
              (element) => MapEntry(element.tipId, element.amountViews),
            ),
          );

  Stream<StockResponse<List<Tip>>> getTips() async* {
    final visited = await getVisited();
    yield* _tipListStore.stream(null).map(
          (response) => (response.isData)
              ? StockResponse.data(
                  response.origin,
                  response
                      .requireData()
                      .sortedBy((e) => visited[e.id] ?? 0)
                      .thenBy((element) => element.randomId)
                      .toList(),
                )
              : response,
        );
  }

  Future<void> setTipAsViewedInSession(Tip tip) async {
    if (!_tipsAlreadyVisited.contains(tip.id)) {
      _tipsAlreadyVisited.add(tip.id);
      var amountViewToUpdate =
          await _amountViewsLocalSource.getAmountsViewById(tip.id);
      if (amountViewToUpdate != null) {
        amountViewToUpdate.amountViews++;
      } else {
        amountViewToUpdate =
            TipAmountViewsDbEntity(tipId: tip.id, amountViews: 1);
      }
      await _amountViewsLocalSource.insertAmount(amountViewToUpdate);
    }
  }

  Future<void> changeFavouriteTip(Tip tip) async {
    final tips = await _tipsLocalSource.getTipById(tip.id);
    final tipToUpdate = tips.first;
    tipToUpdate.favouriteDate != null
        ? tipToUpdate.favouriteDate = null
        : tipToUpdate.favouriteDate = DateTime.now().toString();
    await _tipsLocalSource.updateTip(tipToUpdate);
  }
}
