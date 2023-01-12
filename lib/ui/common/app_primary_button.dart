import 'package:flutter/material.dart';
import 'package:fluttips/ui/common/app_base_button.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';

class AppPrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback action;

  const AppPrimaryButton({
    required this.text,
    required this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AppBaseButton(
        text: text,
        action: action,
        backgroundColor: context.theme.colors.primary.shade100,
        textColor: context.theme.colors.primary,
      );
}
