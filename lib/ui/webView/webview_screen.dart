import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen(this.path, {Key? key}) : super(key: key);

  final String path;

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  final WebViewController _webViewController = WebViewController();

  _WebViewScreenState();

  @override
  void initState() {
    DefaultAssetBundle.of(context)
        .loadString(widget.path)
        .then((value) => _webViewController.loadHtmlString(value));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      _webViewController.setBackgroundColor(context.theme.colors.background);
    }
    final colors = context.theme.colors;
    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 20.w, top: 10.h, right: 40.w),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () => context.router.navigateBack(),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.only(
                      top: 5.h,
                      left: 13.w,
                      right: 5.w,
                      bottom: 5.h,
                    ),
                    shape: const CircleBorder(),
                    backgroundColor: context.theme.colors.primary,
                    alignment: Alignment.center,
                  ),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: context.theme.colors.primary.shade100,
                  ),
                ),
              ),
              Expanded(child: WebViewWidget(controller: _webViewController)),
            ],
          ),
        ),
      ),
    );
  }
}
