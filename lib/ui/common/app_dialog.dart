import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';

class AppDialog extends StatelessWidget {
  final String title;
  final String contentText;
  final String optionOne;
  final String? optionTwo;
  final VoidCallback actionOne;
  final VoidCallback? actionTwo;

  const AppDialog({
    required this.title,
    required this.contentText,
    required this.optionOne,
    required this.actionOne,
    Key? key,
    this.optionTwo,
    this.actionTwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        constraints: BoxConstraints(
          minHeight: 100.h,
          maxHeight: 400.h,
        ),
        child: AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.r)),
          backgroundColor: context.theme.colors.primary.shade100,
          title: Column(
            children: [
              const Icon(Icons.mobile_friendly_outlined),
              const SizedBox(height: 20),
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
              onPressed: actionOne,
              child: Text(
                optionOne,
                style: context.theme.textTheme.labelLarge!
                    .copyWith(color: context.theme.colors.tertiary),
                textAlign: TextAlign.right,
              ),
            ),
            if (optionTwo != null)
              TextButton(
                onPressed: actionTwo,
                child: Text(
                  optionTwo!,
                  style: context.theme.textTheme.labelLarge!
                      .copyWith(color: context.theme.colors.tertiary),
                  textAlign: TextAlign.right,
                ),
              ),
          ],
        ),
      );
}
