import 'package:dartx/dartx.dart';

enum FileType {
  image(r'[^\s]+(\.(jpe?g|png|gif|bmp))$'),
  md(r'[^\s]+(\.md)$'),
  code(r'[^\s]+(\.dart)$'),
  ;

  const FileType(this._pathRegex);

  final String _pathRegex;

  static FileType? fromPath(String path) => FileType.values.firstOrNullWhere(
      (fileType) => RegExp(fileType._pathRegex).hasMatch(path));
}
