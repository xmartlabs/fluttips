import 'package:flutter_template/core/model/tip.dart';
import 'package:flutter_template/core/source/tip_remote_source.dart';

class TipRepository {
  final TipRemoteSource _tipRemoteSource;

  TipRepository(this._tipRemoteSource);

  //TODO: change to a stream in next PR with floor
  Future<Iterable<Tip>> getTips() => _tipRemoteSource.getTips();
}
