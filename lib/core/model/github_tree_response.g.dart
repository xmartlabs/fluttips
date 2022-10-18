// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_tree_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitHiubTreeResponse _$$_GitHiubTreeResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GitHiubTreeResponse(
      tree: (json['tree'] as List<dynamic>)
          .map((e) => GitHubFile.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GitHiubTreeResponseToJson(
        _$_GitHiubTreeResponse instance) =>
    <String, dynamic>{
      'tree': instance.tree.map((e) => e.toJson()).toList(),
    };
