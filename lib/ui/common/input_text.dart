import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';

class InputText extends StatelessWidget {
  final TextEditingController controller;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final String? textHint;
  final void Function()? actionSecondIcon;
  final Color? backgroundColor;
  final String? error;
  final Function(String)? onChanged;

  const InputText({
    Key? key,
    required this.controller,
    this.leadingIcon,
    this.trailingIcon,
    this.textHint,
    this.actionSecondIcon,
    this.backgroundColor,
    this.error,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextField(
        onChanged: onChanged,
        controller: controller,
        decoration: InputDecoration(
          errorText: error,
          filled: true,
          fillColor: backgroundColor ?? context.theme.colors.surface,
          border: OutlineInputBorder(
            borderSide: error != null
                ? BorderSide(color: context.theme.colors.primary.shade300)
                : BorderSide(color: context.theme.colors.error),
            borderRadius: BorderRadius.circular(4.r),
          ),
          prefixIcon: Icon(leadingIcon),
          hintText: textHint,
          suffixIcon: error != null
              ? IconButton(
                  onPressed: actionSecondIcon,
                  icon: Icon(trailingIcon),
                )
              : Icon(
                  Icons.error,
                  color: context.theme.colors.error,
                ),
          labelStyle: context.theme.textStyles.bodyLarge?.copyWith(
            color: context.theme.colors.onSurface,
          ),
          hintStyle: context.theme.textStyles.bodyLarge?.copyWith(
            color: context.theme.colors.onSurface,
          ),
        ),
        style: context.theme.textStyles.bodyLarge?.copyWith(
          color: context.theme.colors.onSurface,
        ),
      );
}
