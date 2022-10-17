import 'package:flutter_template/core/model/service/service_response.dart';
import 'package:flutter_template/core/model/tips_response.dart';
import 'package:flutter_template/core/source/common/http_service.dart';

import '../model/tip.dart';

class TipRemoteSource {
  static const _urlGetTips = '/git/trees/main?recursive=All';

  final HttpServiceDio _httpService;

  TipRemoteSource(this._httpService);

  Future<TipResponse> getTips() async => (await _httpService
      .getAndProcessResponse(_urlGetTips,
      serializer:  (tip) => TipResponse.fromJson(tip)))
          .getDataOrThrow();
}
