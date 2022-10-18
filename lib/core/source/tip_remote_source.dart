import 'package:dartx/dartx.dart';
import 'package:flutter_template/core/common/extension/stream_future_extensions.dart';
import 'package:flutter_template/core/model/github_file_response.dart';
import 'package:flutter_template/core/model/service/service_response.dart';
import 'package:flutter_template/core/model/tip.dart';
import 'package:flutter_template/core/source/common/http_service.dart';
import 'package:flutter_template/core/model/github_tree_response.dart';

import 'package:flutter_template/core/model/common/file_type.dart';

class TipRemoteSource {
  static const _urlGetTips = '/git/trees/main?recursive=All';
  static const _nameMainFolder = "tipsandtricks/";
  final HttpServiceDio _httpService;
  static const _prefixUrlImage =
      "https://raw.githubusercontent.com/vandadnp/flutter-tips-and-tricks/main/";
  static const _prefix =
      "https://github.com/vandadnp/flutter-tips-and-tricks/blob/main/";

  TipRemoteSource(this._httpService);

  Future<List<Tip>> getTips() async {
    final response = await (_httpService.getAndProcessResponse(_urlGetTips,
            serializer: (tip) => GitHiubTreeResponse.fromJson(tip)))
        .then((value) => value.getDataOrThrow())
        .then((value) => value.tree
            .where((element) => element.path.contains(_nameMainFolder))
            .groupBy((element) => element.path.split('/').second));

    return _createTip(response);
  }

  List<Tip> _createTip(Map<String, List<GitHubFile>> gitResponse) {
    final List<Tip> listTips = [];

    gitResponse.entries.map((entry) {
      entry.value.where((element) => element.path.split('/').length == 2);
      final tipDir = entry.value.firstWhere((element) => element.isDirectory);
      final Map<FileType?, GitHubFile> files = entry.value
          .whereNot((element) => element.isDirectory)
          .associateBy((file) => FileType.fromPath(file.path));

      listTips.add(Tip(
        id: tipDir.path,
        name: tipDir.path.split('/').second,
        url: _prefix + tipDir.path,
        imageUrl: _prefixUrlImage + files[FileType.image]!.path,
        codeUrl: _prefix + files[FileType.code]!.path,
        mdUrl: _prefix + files[FileType.code]!.path,
      ));
    });

    return listTips;
  }
}
