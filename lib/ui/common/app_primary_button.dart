import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  Widget build(BuildContext context) => MaterialButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.r),
      side: BorderSide(
        color: context.theme.colors.surface,
      ),
    ),
    elevation: 5,
    color: context.theme.colors.primary.shade100,
    textColor: context.theme.colors.surface,
    onPressed: action,
    focusColor: context.theme.colors.surface.shade600,
    child: Text(text),
  );
}