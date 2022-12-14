import 'package:dartx/dartx.dart';
import 'package:fluttips/core/model/tip.dart';
import 'package:fluttips/core/source/remote_source/tip_remote_source.dart';
import 'package:stock/stock.dart';
import 'package:fluttips/core/source/local_source/tips_local_source.dart';
import 'package:fluttips/core/model/db/tip_db_entity.dart';
import 'package:fluttips/core/model/serializer/tip_serializer.dart';

class TipRepository {
  //ignore: unused_field
  final TipRemoteSource _tipRemoteSource;

  //ignore: unused_field
  final TipsLocalSource _tipsLocalSource;

  final Set<String> _tipsAlreadyVisited = {};
  final _tipMapper = TipStockTypeMapper();
  final Stock<dynamic, List<Tip>> _tipListStock;
  final Stock<dynamic, List<Tip>> _favouritesTipListStock;

  TipRepository(
    this._tipsLocalSource,
    this._tipRemoteSource,
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
      _tipsLocalSource.getTips().first.then(
            (values) => values.associate(
              (element) => MapEntry(element.id, element.amountViews),
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
      final dbTip = tip.copyWith(amountViews: tip.amountViews + 1);
      final tipToUpdate = _tipMapper.fromOutput(dbTip);
      await _tipsLocalSource.updateTip(tipToUpdate);
    }
  }

  Future<void> toggleFavouriteTipValue(Tip tip) async {
    final tipToUpdate = _tipMapper.fromOutput(tip);
    tipToUpdate.favouriteDate =
        tipToUpdate.favouriteDate == null ? DateTime.now() : null;
    await _tipsLocalSource.updateTip(tipToUpdate);
  }
}
