import 'package:fluttips/core/model/tip.dart';

extension TipExtensions on Tip {
  bool get isFavourite => favouriteDate != null;
}
