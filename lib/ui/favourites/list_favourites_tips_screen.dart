import 'package:flutter/material.dart';
import 'package:flutter_template/ui/common/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';
import 'package:flutter_template/ui/tips/tips_screen.dart';
import 'package:flutter_template/ui/tips/show_tips_type.dart';
import 'package:flutter_template/core/model/tip.dart';

import 'package:flutter_template/core/di/di_provider.dart';
import 'package:flutter_template/ui/app_router.dart';

class ListFavouritesTipsScreen extends StatelessWidget {
  final ShowTipsType showTipType;
  final Tip? tip;
  final router = DiProvider.get<AppRouter>();

  ListFavouritesTipsScreen({
    required this.showTipType,
    this.tip,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          TipsScreen(
            showTipType: showTipType,
            tip: tip,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 10),
            child: TextButton(
              onPressed: router.navigateBack,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 10,
                  right: 5,
                  bottom: 5,
                ),
                shape: const CircleBorder(),
                backgroundColor: context.theme.colors.primary.shade100,
                alignment: Alignment.center,
              ),
              child: const Icon(Icons.arrow_back_ios),
            ),
          ),
        ],
      );
}
