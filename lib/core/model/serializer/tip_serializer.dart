import 'package:flutter_template/core/model/db/repository_db_entity.dart';
import 'package:flutter_template/core/model/project.dart';
import 'package:stock/stock.dart';

import '../tip.dart';

class TipStockTypeMapper extends StockTypeMapper<ProjectDbEntity, Tip>{
  @override
  Tip fromInput(ProjectDbEntity value) {
    // TODO: implement fromInput

    throw UnimplementedError();
  }

  @override
  ProjectDbEntity fromOutput(value) {
    // TODO: implement fromOutput
    throw UnimplementedError();
  }

}