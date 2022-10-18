import 'package:dartx/dartx.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_file_response.freezed.dart';

part 'github_file_response.g.dart';

@freezed
class GitHubFile with _$GitHubFile {
  @JsonSerializable()
  factory GitHubFile({
    required String path,
    required String url,
    required GitHubFileType type,
  }) = _GitHubFile;

  factory GitHubFile.fromJson(Map<String, dynamic> json) =>
      _$GitHubFileFromJson(json);
}

enum GitHubFileType {
  blob,
  tree,
}

extension GitHubFileExtensions on GitHubFile{
  bool get isDirectory => type == GitHubFileType.tree;
}