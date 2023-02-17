import 'package:flutter/foundation.dart';
import 'package:fluttips/gen/assets.gen.dart';
import 'package:fluttips/ui/webView/webview_screen.dart';

class TermsAndConditionsScreen extends WebViewScreen {
  TermsAndConditionsScreen({Key? key})
      : super(path: Assets.policyAndTerms.termsAndConditions, key: key);
}
