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
    required int randomId,
    String? favouriteDate,
  }) = _Tip;

  factory Tip.fromJson(Map<String, dynamic> json) => _$TipFromJson(json);
}
