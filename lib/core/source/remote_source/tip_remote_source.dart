import 'dart:math';
import 'package:dartx/dartx.dart';
import 'package:fluttips/core/model/service/responses/github_file_response.dart';
import 'package:fluttips/core/model/service/responses/service_response.dart';
import 'package:fluttips/core/model/tip.dart';
import 'package:fluttips/core/source/common/http_service.dart';
import 'package:fluttips/core/model/service/responses/github_tree_response.dart';
import 'package:fluttips/core/common/config.dart';
import 'package:fluttips/core/model/common/file_type.dart';

class TipRemoteSource {
  static const _urlGetGithubFiles = '/git/trees/main?recursive=All';
  final HttpServiceDio _httpService;

  TipRemoteSource(this._httpService);

  Future<List<Tip>> getTips() => _httpService
      .getAndProcessResponse(
        _urlGetGithubFiles,
        serializer: (file) => GitHubTreeResponse.fromJson(file),
      )
      .then((value) => value.getDataOrThrow())
      .then(_processTips);

  List<Tip> _processTips(GitHubTreeResponse response) {
    final Random random = Random();
    return response.tree
        .where((element) => element.path.contains(Config.gitHubTipsNameFolder))
        .groupBy((element) => element.path.split('/').second)
        .entries
        .map((entry) => _createTip(entry.key, entry.value, random))
        .toList();
  }

  Tip _createTip(String key, List<GitHubFile> groupFiles, Random random) {
    final tipDir = groupFiles.firstWhere((element) => element.isDirectory);
    final files = groupFiles
        .whereNot((element) => element.isDirectory)
        .associateBy((file) => FileType.fromPath(file.path));
    return Tip(
      id: key,
      name: _generateTipName(key),
      url: Config.prefixUrl + tipDir.path,
      imageUrl: Config.imageBaseUrl +
          Uri.encodeComponent(files[FileType.image]!.path),
      codeUrl: Config.prefixUrl + (files[FileType.code]?.path ?? ''),
      mdUrl: Config.prefixUrl + (files[FileType.md]?.path ?? ''),
      randomId: random.nextInt(Config.maxDatabaseIntValue.toInt()),
    );
  }

  //TODO: this name should be taken from the README.md file
  String _generateTipName(String tipId) => tipId
      .replaceAll('---', ' <endash> ')
      .replaceAll('--', ' <endash> ')
      .replaceAll('-', ' ')
      .replaceAll('<endash>', '-')
      .trim()
      .capitalize()
      .replaceAll('flutter', 'Flutter')
      .replaceAll('dart', 'Dart');
}
