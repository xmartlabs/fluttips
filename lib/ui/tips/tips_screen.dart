import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/core/model/extensions/tip_extension.dart';
import 'package:flutter_template/ui/common/context_extensions.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';
import 'package:flutter_template/ui/tips/show_tips_type.dart';
import 'package:flutter_template/ui/tips/tips_cubit.dart';
import 'package:flutter_template/ui/common/custom_scaffold_fab.dart';
import 'package:flutter_template/ui/common/fab.dart';

import 'package:flutter_template/core/model/tip.dart';

class TipsScreen extends StatelessWidget {
  final ShowTipsType showTipType;
  final Tip? tip;

  const TipsScreen({
    required this.showTipType,
    this.tip,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) =>
            TipCubit(showTipType, context.read<ErrorHandlerCubit>(), tip),
        child: const _TipContentScreen(),
      );
}

class _TipContentScreen extends StatefulWidget {
  const _TipContentScreen();

  @override
  State<_TipContentScreen> createState() => _TipContentScreenState();
}

class _TipContentScreenState extends State<_TipContentScreen> {
  late final TextEditingController _controller = TextEditingController();
  late final PageController _pageController = PageController();

  @override
  void dispose() {
    _controller.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TipCubit>();
    return BlocConsumer<TipCubit, TipsBaseState>(
      listener: (context, state) {
        if (state.currentPage != _pageController.page?.toInt() &&
            state.currentPage > 0) {
          _pageController.jumpToPage(state.currentPage);
        }
      },
      builder: (context, state) => MainScaffoldWithFab(
        border: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.r)),
        ),
        iconNotSelected: Icons.star_border,
        state:
            state.tips.isNotEmpty && state.tips[state.currentPage].isFavourite
                ? const FabState.selected()
                : const FabState.notSelected(),
        action: () =>
            cubit.changeFavouriteButton(state.tips[state.currentPage]),
        iconSelected: Icons.star,
        child: PageView.builder(
          controller: _pageController,
          allowImplicitScrolling: true,
          scrollDirection: Axis.vertical,
          itemCount: state.tips.length,
          onPageChanged: (index) => cubit
            ..onTipDisplayed(state.tips[index])
            ..setCurrentPage(index),
          itemBuilder: (BuildContext context, int index) => DisplayTipWidget(
            index: index,
            state: state,
          ),
        ),
      ),
    );
  }
}

class DisplayTipWidget extends StatelessWidget {
  final TipsBaseState state;
  final int index;

  const DisplayTipWidget({
    required this.index,
    required this.state,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Image.network(
        state.tips[index].imageUrl,
        loadingBuilder: (
          BuildContext context,
          Widget child,
          ImageChunkEvent? loadingProgress,
        ) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              color: context.theme.colors.primary.shade100,
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
      );
}
