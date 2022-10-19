// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tip _$$_TipFromJson(Map<String, dynamic> json) => _$_Tip(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      imageUrl: json['image_url'] as String?,
      codeUrl: json['code_url'] as String?,
      mdUrl: json['md_url'] as String?,
    );

Map<String, dynamic> _$$_TipToJson(_$_Tip instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'image_url': instance.imageUrl,
      'code_url': instance.codeUrl,
      'md_url': instance.mdUrl,
    };
