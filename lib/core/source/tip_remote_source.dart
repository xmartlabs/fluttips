import 'package:dartx/dartx.dart';
import 'package:flutter_template/core/model/service/responses/github_file_response.dart';
import 'package:flutter_template/core/model/service/responses/service_response.dart';
import 'package:flutter_template/core/model/tip.dart';
import 'package:flutter_template/core/source/common/http_service.dart';
import 'package:flutter_template/core/model/service/responses/github_tree_response.dart';
import 'package:flutter_template/core/common/config.dart';
import 'package:flutter_template/core/model/common/file_type.dart';

class TipRemoteSource {
  static const _urlGetGithubFiles = '/git/trees/main?recursive=All';
  final HttpServiceDio _httpService;

  TipRemoteSource(this._httpService);

  Future<List<Tip>> getTips() async => _mapToTips((await _httpService
          .getAndProcessResponse(_urlGetGithubFiles,
              serializer: (file) => GitHubTreeResponse.fromJson(file)))
      .getDataOrThrow()
      .tree
      .where((element) => element.path.contains(Config.gitHubTipsNameFolder))
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
          url: Config.prefixUrl + tipDir.path,
          imageUrl: Config.imageBaseUrl + files[FileType.image]!.path,
          codeUrl: Config.prefixUrl + (files[FileType.code]?.path ?? ''),
          mdUrl: Config.prefixUrl + (files[FileType.md]?.path ?? ''),
        );
      }).toList();
}
