// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_tree_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitHiubTreeResponseImpl _$$GitHiubTreeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GitHiubTreeResponseImpl(
      tree: (json['tree'] as List<dynamic>)
          .map((e) => GitHubFile.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GitHiubTreeResponseImplToJson(
        _$GitHiubTreeResponseImpl instance) =>
    <String, dynamic>{
      'tree': instance.tree.map((e) => e.toJson()).toList(),
    };
