import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback action;

  const AppButton({
    required this.text,
    required this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
        elevation: 5,
        color: context.theme.colors.primary.shade100,
        onPressed: action,
        child: Text(text),
      );
}
