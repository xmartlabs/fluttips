import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/ui/app_router.dart';
import 'package:fluttips/ui/tips/show_tips_type.dart';
import 'package:fluttips/gen/assets.gen.dart';

class AppDrawer extends StatelessWidget {
  final TabsRouter _tabsController;
  final Function _action;

  const AppDrawer({
    required TabsRouter tabsController,
    required Function action,
    Key? key,
  })  : _tabsController = tabsController,
        _action = action,
        super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        width: 90.w,
        backgroundColor: context.theme.colors.primary.shade100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16.r),
            bottomRight: Radius.circular(16.r),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 30.w,
              height: 30.w,
              margin: EdgeInsets.only(
                top: 10.h,
                left: 5.w,
                right: 5.w,
              ),
              child: Assets.images.icAppLogo.image(fit: BoxFit.fitHeight),
            ),
            ...HomeNavOptions.values
                .where((element) => element.index != HomeNavOptions.about.index)
                .map(
                  (navOption) => Expanded(
                    child: _TabOption(
                      icon: navOption.icon,
                      isCurrentIndex:
                          navOption.index == _tabsController.activeIndex,
                      onPressed: () {
                        _action();
                        _tabsController.setActiveIndex(navOption.index);
                      },
                    ),
                  ),
                )
                .toList(),
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(bottom: 10.h),
                alignment: Alignment.bottomCenter,
                child: _TabOption(
                  isCurrentIndex:
                      HomeNavOptions.about.index == _tabsController.activeIndex,
                  icon: HomeNavOptions.about.icon,
                  onPressed: () {
                    _action();
                    _tabsController.setActiveIndex(HomeNavOptions.about.index);
                  },
                ),
              ),
            ),
          ],
        ),
      );
}

class _TabOption extends StatelessWidget {
  final bool isCurrentIndex;
  final IconData icon;
  final Function() onPressed;

  const _TabOption({
    required this.isCurrentIndex,
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = context.theme.colors;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      padding: EdgeInsets.all(5.w),
      child: IconButton(
        iconSize: 21.w,
        icon: isCurrentIndex
            ? Icon(icon, color: color.surface.shade900)
            : Icon(icon, color: color.surface.shade700),
        onPressed: onPressed,
      ),
    );
  }
}

enum HomeNavOptions {
  images,
  videos,
  favourites,
  about,
}

extension NavExtensions on HomeNavOptions {
  IconData get icon {
    switch (this) {
      case HomeNavOptions.videos:
        return Icons.play_circle_outline_outlined;
      case HomeNavOptions.images:
        return Icons.image_outlined;
      case HomeNavOptions.favourites:
        return Icons.star_border_rounded;
      case HomeNavOptions.about:
        return Icons.help_outline_rounded;
    }
  }

  PageRouteInfo<dynamic> get route {
    switch (this) {
      case HomeNavOptions.images:
        return HomeTipsScreenRoute(showTipType: ShowTipsType.all);
      case HomeNavOptions.videos:
        return const HomeVideosScreenRoute();
      case HomeNavOptions.favourites:
        return const HomeFavouritesTipsScreenRoute();
      case HomeNavOptions.about:
        return const AboutFlowRoute();
    }
  }
}
