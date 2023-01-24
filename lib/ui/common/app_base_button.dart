import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';

class AppBaseButton extends StatelessWidget {
  final String text;
  final VoidCallback action;
  final Color backgroundColor;
  final Color textColor;
  final Image? image;

  const AppBaseButton({
    required this.text,
    required this.action,
    required this.backgroundColor,
    required this.textColor,
    this.image,
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
        textColor: textColor,
        onPressed: action,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (image != null) image!,
            SizedBox(width: 10.h),
            Text(text),
          ],
        ),
      );
}
