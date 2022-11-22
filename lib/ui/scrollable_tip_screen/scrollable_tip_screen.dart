import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/ui/section/global_ui/global_ui_cubit.dart';
import 'package:flutter_template/ui/tips/show_tips_type.dart';
import 'package:flutter_template/ui/tips/tips_screen.dart';

class ScrollableTipScreen extends StatelessWidget {
  final ShowTipsType showTipType;

  const ScrollableTipScreen(this.showTipType, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<GlobalUICubit, GlobalUIState>(
        builder: (context, state) => TipsScreen(
          showTipType: showTipType,
          hideFab: state.hideFavouriteFab,
        ),
      );
}
