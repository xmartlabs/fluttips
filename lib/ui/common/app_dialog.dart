import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';

class AppDialog extends StatelessWidget {
  final String title;
  final String contentText;
  final String option1;
  final String option2;
  final void Function() actionOption1;
  final void Function() actionOption2;

  const AppDialog({
    Key? key,
    required this.title,
    required this.contentText,
    required this.option1,
    required this.option2,
    required this.actionOption1,
    required this.actionOption2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: 100,
        height: 100,
        child: AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.r)),
          backgroundColor: context.theme.colors.primary.shade100,
          title: Column(
            children: [
              Icon(Icons.mobile_friendly_outlined),
              SizedBox(height: 20,),
              Text(
                title,
                textAlign: TextAlign.center,
                style: context.theme.textTheme.headlineSmall,
              ),
            ],
          ),
          content: Container(
              width: 100,
              height: 100,
              child: Text(
                contentText,
                style: context.theme.textTheme.bodyMedium,
              )),
          actions: [
            TextButton(
                child: Text(
                  option1,
                  style: context.theme.textTheme.labelLarge!
                      .copyWith(color: context.theme.colors.tertiary),
                  textAlign: TextAlign.right,
                ),
                onPressed: () => actionOption1),
            TextButton(
                child: Text(
                  option2,
                  style: context.theme.textTheme.labelLarge!
                      .copyWith(color: context.theme.colors.tertiary),
                  textAlign: TextAlign.right,
                ),
                onPressed: () => actionOption2),
          ],
        ),
      );
}
