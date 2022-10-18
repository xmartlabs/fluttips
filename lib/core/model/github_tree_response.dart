import 'package:flutter_template/core/model/github_file_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'tip.dart';

part 'github_tree_response.freezed.dart';

part 'github_tree_response.g.dart';

@freezed
class GitHiubTreeResponse with _$GitHiubTreeResponse {
  @JsonSerializable()
  factory GitHiubTreeResponse({required List<GitHubFile> tree}) = _GitHiubTreeResponse;

  factory GitHiubTreeResponse.fromJson(Map<String, dynamic> json) =>
      _$GitHiubTreeResponseFromJson(json);
}
