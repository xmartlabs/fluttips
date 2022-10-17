// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tips_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TipResponse _$$_TipResponseFromJson(Map<String, dynamic> json) =>
    _$_TipResponse(
      tree: (json['tree'] as List<dynamic>)
          .map((e) => Tip.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TipResponseToJson(_$_TipResponse instance) =>
    <String, dynamic>{
      'tree': instance.tree.map((e) => e.toJson()).toList(),
    };
