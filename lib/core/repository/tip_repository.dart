import 'package:flutter_template/core/model/db/repository_db_entity.dart';
import 'package:flutter_template/core/model/serializer/project_serializer.dart';
import 'package:stock/stock.dart';

import '../model/tip.dart';
import '../model/tips_response.dart';
import '../source/tip_remote_source.dart';

class TipRepository {
  final TipRemoteSource _tipRemoteSource;

  final RegExp _regExpImage =
      RegExp(r'[^\s]+(\.(jpe?g|png|gif|bmp))$', caseSensitive: false);

  TipRepository(this._tipRemoteSource);

  Future<List<Tip>?> getTips() async => (await _tipRemoteSource.getTips())
      .tree
      .where((element) => _regExpImage.hasMatch(element.path))
      .toList();
}
