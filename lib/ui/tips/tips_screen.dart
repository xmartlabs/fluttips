import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/core/model/extensions/tip_extension.dart';
import 'package:flutter_template/ui/common/context_extensions.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:flutter_template/ui/section/global_ui/global_ui_cubit.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';
import 'package:flutter_template/ui/tips/show_tips_type.dart';
import 'package:flutter_template/ui/tips/tips_cubit.dart';
import 'package:flutter_template/ui/common/custom_scaffold_fab.dart';
import 'package:flutter_template/ui/common/fab.dart';
import 'package:flutter_template/core/model/tip.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

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
  final PageController _pageController = PageController();

  _TipContentScreenState();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final globalCubit = context.read<GlobalUICubit>();
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
        action: () => cubit.changeFavouriteButton(),
        iconSelected: Icons.star,
        visibility: context.select(
          (GlobalUICubit globalUICubit) =>
              globalUICubit.state.showUIActionComponent,
        ),
        child: PhotoViewGallery.builder(
          backgroundDecoration:
              BoxDecoration(color: context.theme.colors.background),
          scrollPhysics: const BouncingScrollPhysics(),
          builder: (BuildContext context, int index) =>
              PhotoViewGalleryPageOptions(
            imageProvider: NetworkImage(state.tips[index].imageUrl),
            initialScale: PhotoViewComputedScale.contained,
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 1.5,
            onTapUp: (context, _, __) =>
                globalCubit.toggleUIActionComponentState(),
          ),
          itemCount: state.tips.length,
          pageController: _pageController,
          onPageChanged: (index) => cubit
            ..onTipDisplayed(state.tips[index])
            ..setCurrentPage(index),
          scrollDirection: Axis.vertical,
          allowImplicitScrolling: true,
        ),
      ),
    );
  }
}
