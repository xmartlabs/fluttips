import 'package:auto_route/auto_route.dart';
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
  late final WebViewController _webViewController;

  _WebViewScreenState();

  @override
  void initState() {
    _webViewController = WebViewController();
    _webViewController.loadFlutterAsset(widget.path);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _webViewController.setBackgroundColor(context.theme.colors.background);
    return Container(
      margin: EdgeInsets.only(left: 50, top: 10.h),
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => context.router.navigateBack(),
                color: context.theme.colors.surface,
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ],
          ),
          Expanded(child: WebViewWidget(controller: _webViewController)),
        ],
      ),
    );
  }
}
