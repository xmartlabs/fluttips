import 'package:dartx/dartx.dart';
import 'package:fluttips/core/model/db/tip_amount_views_db_entity.dart';
import 'package:fluttips/core/model/tip.dart';
import 'package:fluttips/core/source/local_source/amount_views_local_source.dart';
import 'package:fluttips/core/source/remote_source/tip_remote_source.dart';
import 'package:stock/stock.dart';
import 'package:fluttips/core/source/local_source/tips_local_source.dart';
import 'package:fluttips/core/model/db/tip_db_entity.dart';
import 'package:fluttips/core/model/serializer/tip_serializer.dart';

class TipRepository {
  //ignore: unused_field
  final TipRemoteSource _tipRemoteSource;
  final AmountViewsLocalSource _amountViewsLocalSource;

  //ignore: unused_field
  final TipsLocalSource _tipsLocalSource;

  final Set<String> _tipsAlreadyVisited = {};

  final Stock<dynamic, List<Tip>> _tipListStock;
  final Stock<dynamic, List<Tip>> _favouritesTipListStock;

  TipRepository(
    this._tipsLocalSource,
    this._tipRemoteSource,
    this._amountViewsLocalSource,
  )   : _tipListStock =
            _generateTipListStock(_tipRemoteSource, _tipsLocalSource),
        _favouritesTipListStock =
            _generateFavouriteTipListStock(_tipsLocalSource);

  static Stock<dynamic, List<Tip>> _generateTipListStock(
    TipRemoteSource tipRemoteSource,
    TipsLocalSource tipsLocalSource,
  ) =>
      Stock(
        fetcher: Fetcher.ofFuture((_) => tipRemoteSource.getTips()),
        sourceOfTruth: SourceOfTruth<dynamic, List<TipDbEntity>>(
          reader: (_) => tipsLocalSource.getTips(),
          writer: (_, value) =>
              tipsLocalSource.replaceAndUpdateTips(value ?? []),
        ).mapToUsingMapper(TipListStockTypeMapper()),
      );

  static Stock<dynamic, List<Tip>> _generateFavouriteTipListStock(
    TipsLocalSource tipsLocalSource,
  ) =>
      Stock(
        fetcher: Fetcher.ofStream(
          (_) => tipsLocalSource.getFavouritesTips().map(
                TipListStockTypeMapper().fromInput,
              ),
        ),
        sourceOfTruth: CachedSourceOfTruth(),
      );

  Future<Map<String, int>> getVisited() =>
      _amountViewsLocalSource.getAmountsView().first.then(
            (values) => values.associate(
              (element) => MapEntry(element.tipId, element.amountViews),
            ),
          );

  Stream<StockResponse<List<Tip>>> getTips() async* {
    final visited = await getVisited();
    yield* _tipListStock.stream(null).map(
          (response) => response.mapData(
            (tips) => tips.value
                .sortedBy((e) => visited[e.id] ?? 0)
                .thenBy((element) => element.randomId)
                .toList(),
          ),
        );
  }

  Stream<StockResponse<List<Tip>>> getFavouritesTips() =>
      _favouritesTipListStock.stream(null).map(
            (response) => response.mapData(
              (tips) => tips.value.sortedBy((e) => e.favouriteDate!),
            ),
          );

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

  Future<void> toggleFavouriteTip(Tip tip) async {
    final tipToUpdate = TipStockTypeMapper().fromOutput(tip);
    tipToUpdate.favouriteDate != null
        ? tipToUpdate.favouriteDate = null
        : tipToUpdate.favouriteDate = DateTime.now();
    await _tipsLocalSource.updateTip(tipToUpdate);
  }
}
