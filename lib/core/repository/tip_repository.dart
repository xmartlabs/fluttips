import 'package:flutter_template/core/model/db/repository_db_entity.dart';
import 'package:flutter_template/core/model/serializer/project_serializer.dart';
import 'package:stock/stock.dart';

import 'package:flutter_template/core/model/tip.dart';
import 'package:flutter_template/core/source/tip_remote_source.dart';

import 'package:flutter_template/core/model/github_file_response.dart';

class TipRepository {
  final TipRemoteSource _tipRemoteSource;

  TipRepository(this._tipRemoteSource);

  Future<List<Tip>?> getTips() async =>
      (await _tipRemoteSource.getTips()).toList();
}
