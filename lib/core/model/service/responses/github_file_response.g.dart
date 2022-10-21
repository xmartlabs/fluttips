// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_file_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitHubFile _$$_GitHubFileFromJson(Map<String, dynamic> json) =>
    _$_GitHubFile(
      path: json['path'] as String,
      url: json['url'] as String,
      type: $enumDecode(_$GitHubFileTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_GitHubFileToJson(_$_GitHubFile instance) =>
    <String, dynamic>{
      'path': instance.path,
      'url': instance.url,
      'type': _$GitHubFileTypeEnumMap[instance.type]!,
    };

const _$GitHubFileTypeEnumMap = {
  GitHubFileType.blob: 'blob',
  GitHubFileType.tree: 'tree',
};
