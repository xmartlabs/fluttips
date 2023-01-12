import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';

class AppBaseButton extends StatelessWidget {
  final String text;
  final VoidCallback action;
  final Color backgroundColor;

  const AppBaseButton({
    required this.text,
    required this.action,
    required this.backgroundColor,
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
        color: backgroundColor,
        textColor: context.theme.colors.surface,
        onPressed: action,
        child: Text(text),
      );
}
