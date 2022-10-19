import 'package:dartx/dartx.dart';
import 'package:flutter_template/core/model/service/responses/github_file_response.dart';
import 'package:flutter_template/core/model/service/responses/service_response.dart';
import 'package:flutter_template/core/model/tip.dart';
import 'package:flutter_template/core/source/common/http_service.dart';
import 'package:flutter_template/core/model/service/responses/github_tree_response.dart';

import 'package:flutter_template/core/model/common/file_type.dart';

class TipRemoteSource {
  static const _urlGetGithubFiles = '/git/trees/main?recursive=All';
  static const _nameMainFolder = 'tipsandtricks/';
  final HttpServiceDio _httpService;
  static const _prefixUrlImage =
      'https://raw.githubusercontent.com/vandadnp/flutter-tips-and-tricks/main/';
  static const _prefix =
      'https://github.com/vandadnp/flutter-tips-and-tricks/blob/main/';

  TipRemoteSource(this._httpService);

  Future<List<Tip>> getTips() async =>
      _mapToTips((await _httpService.getAndProcessResponse(_urlGetGithubFiles,
              serializer: (file) => GitHubTreeResponse.fromJson(file)))
          .getDataOrThrow()
          .tree
          .where((element) => element.path.contains(_nameMainFolder))
          .groupBy((element) => element.path.split('/').second));

  List<Tip> _mapToTips(Map<String, List<GitHubFile>> gitResponse) =>
      gitResponse.entries.map((entry) {
        final tipDir = entry.value.firstWhere((element) => element.isDirectory);
        final files = entry.value
            .whereNot((element) => element.isDirectory)
            .associateBy((file) => FileType.fromPath(file.path));
        return Tip(
          id: tipDir.path,
          name: tipDir.path.split('/').second,
          url: _prefix + tipDir.path,
          imageUrl: files[FileType.image] != null
              ? _prefixUrlImage + files[FileType.image]!.path
              : null,
          codeUrl: _prefix + (files[FileType.code]?.path ?? ''),
          mdUrl: _prefix + (files[FileType.md]?.path ?? ''),
        );
      }).toList();
}
