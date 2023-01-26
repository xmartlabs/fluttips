import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/ui/tips/show_tips_type.dart';
import 'package:fluttips/core/model/tip.dart';
import 'package:fluttips/ui/tips/image_tip_details_screen.dart';

class FavouritesTipDetailsScreen extends StatelessWidget {
  final ShowTipsType showTipType;
  final Tip? tip;

  const FavouritesTipDetailsScreen({
    required this.showTipType,
    this.tip,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: context.theme.colors.background,
        child: SafeArea(
          child: Stack(
            children: [
              ImageTipDetailsScreen(
                showTipType: showTipType,
                tip: tip,
              ),
              Container(
                margin: EdgeInsets.only(left: 20.w, top: 10.h),
                child: TextButton(
                  onPressed: context.router.navigateBack,
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.only(
                      top: 5.h,
                      left: 13.w,
                      right: 5.w,
                      bottom: 5.h,
                    ),
                    shape: const CircleBorder(),
                    backgroundColor: context.theme.colors.primary,
                    alignment: Alignment.center,
                  ),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: context.theme.colors.primary.shade100,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
