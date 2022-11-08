import 'package:stock/stock.dart';

import 'package:flutter_template/core/model/db/tip_db_entity.dart';
import 'package:flutter_template/core/model/tip.dart';

class TipStockTypeMapper extends StockTypeMapper<TipDbEntity, Tip> {
  @override
  TipDbEntity fromOutput(Tip value) => TipDbEntity(
        id: value.id,
        name: value.name,
        url: value.url,
        imageUrl: value.imageUrl,
        codeUrl: value.codeUrl,
        mdUrl: value.mdUrl,
        favourite: value.favourite,
      );

  @override
  Tip fromInput(TipDbEntity value) => Tip(
        id: value.id,
        name: value.name,
        url: value.url,
        imageUrl: value.imageUrl,
        codeUrl: value.codeUrl,
        mdUrl: value.mdUrl,
        favourite: value.favourite,
      );
}

class TipListStockTypeMapper
    extends StockTypeMapper<List<TipDbEntity>, List<Tip>> {
  final _tipSerializer = TipStockTypeMapper();

  @override
  List<Tip> fromInput(List<TipDbEntity> value) =>
      value.map(_tipSerializer.fromInput).toList();

  @override
  List<TipDbEntity> fromOutput(List<Tip> value) =>
      value.map(_tipSerializer.fromOutput).toList();
}
