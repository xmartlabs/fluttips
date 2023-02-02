import 'package:flutter/material.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/core/model/tip.dart';
import 'package:fluttips/ui/image_tip_details/image_tip_details_screen.dart';
import 'package:fluttips/ui/image_tip_details/show_image_tip_details_type.dart';
import 'package:fluttips/ui/common/my_back_button.dart';

class FavouritesTipDetailsScreen extends StatelessWidget {
  final ShowImageTipDetailsType showTipType;
  final Tip? tip;

  const FavouritesTipDetailsScreen({
    required this.showTipType,
    this.tip,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.theme.colors.background,
        body: SafeArea(
          child: Stack(
            children: [
              ImageTipDetailsScreen(
                showTipType: showTipType,
                tip: tip,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 10),
                child: const MyBackButton(),
              ),
            ],
          ),
        ),
      );
}
