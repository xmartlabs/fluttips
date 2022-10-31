import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';

class AppDialog extends StatelessWidget {
  final String title;
  final String contentText;
  final String? negativeOption;
  final String positiveOption;
  final VoidCallback negativeAction;
  final VoidCallback positiveAction;

  const AppDialog({
    Key? key,
    required this.title,
    required this.contentText,
    required this.negativeOption,
    required this.positiveOption,
    required this.negativeAction,
    required this.positiveAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        constraints: BoxConstraints(
          minHeight: 100.h,
          maxHeight: 400.w,
        ),
        child: AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.r)),
          backgroundColor: context.theme.colors.primary.shade100,
          title: Column(
            children: [
              Icon(Icons.mobile_friendly_outlined),
              SizedBox(height: 20),
              Text(
                title,
                textAlign: TextAlign.center,
                style: context.theme.textTheme.headlineSmall,
              ),
            ],
          ),
          content: Text(
            contentText,
            style: context.theme.textTheme.bodyMedium,
          ),
          actions: [
            TextButton(
              onPressed: negativeAction,
              child: Text(
                negativeOption!,
                style: context.theme.textTheme.labelLarge!
                    .copyWith(color: context.theme.colors.tertiary),
                textAlign: TextAlign.right,
              ),
            ),
            TextButton(
              onPressed: positiveAction,
              child: Text(
                positiveOption,
                style: context.theme.textTheme.labelLarge!
                    .copyWith(color: context.theme.colors.tertiary),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      );
}
