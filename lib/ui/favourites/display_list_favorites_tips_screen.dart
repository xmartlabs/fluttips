import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/core/model/tip.dart';

class DisplayListFavoritesTipsScreen extends StatelessWidget {
  final Tip tip;
  final VoidCallback onTipAppendCallback;

  const DisplayListFavoritesTipsScreen({
    required this.tip,
    required this.onTipAppendCallback,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        borderRadius: BorderRadius.circular(15.r),
        onTap: onTipAppendCallback,
        child: Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 10),
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: Colors.transparent,
            border: Border.all(
              color: context.theme.colors.primary.shade100,
            ),
          ),
          child: Text(
            tip.name,
            textAlign: TextAlign.center,
            style: context.theme.textStyles.titleMedium!.copyWith(
              color: context.theme.colors.primary.shade100,
            ),
          ),
        ),
      );
}
