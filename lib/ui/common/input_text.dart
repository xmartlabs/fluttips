import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';

class InputText extends StatelessWidget {
  final TextEditingController controller;
  final double? height;
  final double? width;
  final IconData? firstIcon;
  final IconData? secondIcon;
  final String? textHint;
  final void Function()? actionSecondIcon;
  final Color? backgroundColor;
  final String? error;

  const InputText({
    Key? key,
    required this.controller,
    this.height,
    this.width,
    this.firstIcon,
    this.secondIcon,
    this.textHint,
    this.actionSecondIcon,
    this.backgroundColor,
    this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextField(
        onChanged: (_) {},
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: backgroundColor ?? context.theme.colors.surface,
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: context.theme.colors.error),
              borderRadius: BorderRadius.circular(4.r)),
          border: OutlineInputBorder(
              borderSide:
                  BorderSide(color: context.theme.colors.primary.shade300),
              borderRadius: BorderRadius.circular(4.r)),
          prefixIcon: Icon(firstIcon),
          hintText: textHint,
          errorText: error,
          suffixIcon: error != null
              ? IconButton(onPressed: actionSecondIcon, icon: Icon(secondIcon))
              : Icon(Icons.error),
          labelStyle:
              context.theme.textStyles.bodyLarge?.copyWith(color: Colors.black),
          hintStyle:
              context.theme.textStyles.bodyLarge?.copyWith(color: Colors.black),
        ),
        style:
            context.theme.textStyles.bodyLarge?.copyWith(color: Colors.black),
      );
}

