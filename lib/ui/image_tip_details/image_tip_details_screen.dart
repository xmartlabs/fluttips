import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/core/model/extensions/tip_extension.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/image_tip_details/show_image_tip_details_type.dart';
import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';
import 'package:fluttips/ui/section/global_ui/global_ui_cubit.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/ui/common/custom_scaffold_fab.dart';
import 'package:fluttips/ui/common/fab.dart';
import 'package:fluttips/core/model/tip.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:fluttips/ui/image_tip_details/image_tip_details_screen_cubit.dart';

class ImageTipDetailsScreen extends StatelessWidget {
  final ShowImageTipDetailsType showTipType;
  final Tip? tip;

  const ImageTipDetailsScreen({
    required this.showTipType,
    this.tip,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => ImageTipDetailsScreenCubit(
          showTipType,
          context.read<ErrorHandlerCubit>(),
          tip,
        ),
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
  bool _isScrolling = false;

  _TipContentScreenState();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final globalCubit = context.read<GlobalUICubit>();
    final cubit = context.read<ImageTipDetailsScreenCubit>();
    return BlocConsumer<ImageTipDetailsScreenCubit, TipsImageDetailsBaseState>(
      listener: (context, state) {
        if (state.currentPage != _pageController.page?.toInt() &&
            state.currentPage > 0 &&
            !_isScrolling) {
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
        action: () => cubit.toggleFavouriteTipValue(),
        iconSelected: Icons.star,
        visibility: context.select(
          (GlobalUICubit globalUICubit) =>
              globalUICubit.state.showUIActionComponent,
        ),
        child: NotificationListener(
          onNotification: (notification) {
            if (notification is UserScrollNotification) {
              _isScrolling = notification.direction != ScrollDirection.idle;
            }
            return false;
          },
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
      ),
    );
  }
}
