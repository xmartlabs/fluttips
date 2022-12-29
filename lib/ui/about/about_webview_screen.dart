import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';
import 'package:fluttips/ui/about/about_cubit.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:fluttips/gen/assets.gen.dart';

class AboutWebViewScreen extends StatelessWidget {
  const AboutWebViewScreen({
    required this.isPrivacyPolicy,
    Key? key,
  }) : super(key: key);

  final bool isPrivacyPolicy;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => AboutCubit(context.read<ErrorHandlerCubit>()),
        child: AboutWebViewContentScreen(isPrivacyPolicy),
      );
}

class AboutWebViewContentScreen extends StatefulWidget {
  const AboutWebViewContentScreen(this.isPrivacyPolicy, {Key? key})
      : super(key: key);

  final bool isPrivacyPolicy;

  @override
  State<AboutWebViewContentScreen> createState() =>
      _AboutWebViewContentScreenState();
}

class _AboutWebViewContentScreenState extends State<AboutWebViewContentScreen> {
  late final WebViewController _webViewController;
  late final bool _isPrivacyPolicy;

  _AboutWebViewContentScreenState();

  @override
  void initState() {
    _isPrivacyPolicy = widget.isPrivacyPolicy;
    _webViewController = WebViewController();
    _webViewController.loadFlutterAsset(
      _isPrivacyPolicy
          ? Assets.policyAndTerms.privacyPolicy
          : Assets.policyAndTerms.termsAndConditions,
    );
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
                onPressed: () => context.read<AboutCubit>().navigateToAbout(),
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
