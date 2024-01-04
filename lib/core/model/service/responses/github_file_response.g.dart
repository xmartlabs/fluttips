// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_file_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitHubFileImpl _$$GitHubFileImplFromJson(Map<String, dynamic> json) =>
    _$GitHubFileImpl(
      path: json['path'] as String,
      url: json['url'] as String,
      type: $enumDecode(_$GitHubFileTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$GitHubFileImplToJson(_$GitHubFileImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'url': instance.url,
      'type': _$GitHubFileTypeEnumMap[instance.type]!,
    };

const _$GitHubFileTypeEnumMap = {
  GitHubFileType.blob: 'blob',
  GitHubFileType.tree: 'tree',
};
