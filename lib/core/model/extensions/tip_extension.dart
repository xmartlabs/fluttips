import 'package:flutter_template/core/model/tip.dart';

extension TipExtensions on Tip {
  bool get isFavourite => favouriteDate != null;
}
