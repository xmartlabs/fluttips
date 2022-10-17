import 'package:freezed_annotation/freezed_annotation.dart';

import 'tip.dart';

part 'tips_response.freezed.dart';

part 'tips_response.g.dart';

@freezed
class TipResponse with _$TipResponse {
  @JsonSerializable()
  factory TipResponse(
      {required List<Tip> tree}) = _TipResponse;

  factory TipResponse.fromJson(Map<String, dynamic> json) => _$TipResponseFromJson(json);
}
