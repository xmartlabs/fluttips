import 'package:freezed_annotation/freezed_annotation.dart';

part 'tip.freezed.dart';

part 'tip.g.dart';

@freezed
class Tip with _$Tip {
  @JsonSerializable()
  factory Tip({
    required String id,
    required String name,
    required String url,
    required String imageUrl,
    required String? codeUrl,
    required String? mdUrl,
    @Default(false) bool favourite,
    @Default(0) int randomId,
  }) = _Tip;

  factory Tip.fromJson(Map<String, dynamic> json) => _$TipFromJson(json);
}
