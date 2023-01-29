import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';

class AppBaseButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Image? image;

  const AppBaseButton({
    required this.text,
    required this.onPressed,
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
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 17.w),
        textColor: textColor,
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (image != null)
              Container(
                width: 22.w,
                height: 22.w,
                margin: EdgeInsets.only(right: 10.w),
                child: image,
              ),
            Text(text),
          ],
        ),
      );
}
