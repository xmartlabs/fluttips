import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen(this.path, this.actionButton, {Key? key})
      : super(key: key);

  final String path;
  final VoidCallback actionButton;

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late final WebViewController _webViewController;
  late final String _path;
  late final VoidCallback _action;

  _WebViewScreenState();

  @override
  void initState() {
    _path = widget.path;
    _action = widget.actionButton;
    _webViewController = WebViewController();
    _webViewController.loadFlutterAsset(_path);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _webViewController.setBackgroundColor(context.theme.colors.background);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      margin: EdgeInsets.only(left: 45, top: 10.h),
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => _action(),
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
