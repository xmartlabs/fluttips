import 'package:freezed_annotation/freezed_annotation.dart';

part 'tip.freezed.dart';

part 'tip.g.dart';

@freezed
class Tip with _$Tip {
  @JsonSerializable()
  factory Tip(
      {required String url,
      required String path}) = _Tip;

  factory Tip.fromJson(Map<String, dynamic> json) => _$TipFromJson(json);
}
