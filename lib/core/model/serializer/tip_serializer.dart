import 'package:stock/stock.dart';

import 'package:flutter_template/core/model/db/tip_db_entity.dart';
import 'package:flutter_template/core/model/tip.dart';

class TipStockTypeMapper extends StockTypeMapper<TipDbEntity, Tip> {
  @override
  TipDbEntity fromOutput(Tip commonModel) => TipDbEntity(
        id: commonModel.id,
        name: commonModel.name,
        url: commonModel.url,
        imageUrl: commonModel.imageUrl,
        codeUrl: commonModel.codeUrl,
        mdUrl: commonModel.mdUrl,
        favourite: commonModel.favourite,
      );

  @override
  Tip fromInput(TipDbEntity serviceModel) => Tip(
        id: serviceModel.id,
        name: serviceModel.name,
        url: serviceModel.url,
        imageUrl: serviceModel.imageUrl,
        codeUrl: serviceModel.codeUrl,
        mdUrl: serviceModel.mdUrl,
        favourite: serviceModel.favourite,
      );
}

class TipListStockTypeMapper
    extends StockTypeMapper<List<TipDbEntity>, List<Tip>> {
  final _tipSerializer = TipStockTypeMapper();

  @override
  List<Tip> fromInput(List<TipDbEntity> databaseModel) =>
      databaseModel.map(_tipSerializer.fromInput).toList();

  @override
  List<TipDbEntity> fromOutput(List<Tip> commonModel) =>
      commonModel.map(_tipSerializer.fromOutput).toList();
}
