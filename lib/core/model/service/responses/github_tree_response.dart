import 'package:flutter_template/core/model/service/responses/github_file_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_tree_response.freezed.dart';

part 'github_tree_response.g.dart';

@freezed
class GitHubTreeResponse with _$GitHubTreeResponse {
  @JsonSerializable()
  factory GitHubTreeResponse({required List<GitHubFile> tree}) =
      _GitHiubTreeResponse;

  factory GitHubTreeResponse.fromJson(Map<String, dynamic> json) =>
      _$GitHubTreeResponseFromJson(json);
}
