import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/ui/app_router.dart';
import 'package:fluttips/ui/tips/show_tips_type.dart';

class AppDrawer extends StatelessWidget {
  final TabsRouter _tabsController;

  const AppDrawer({
    required TabsRouter tabsController,
    Key? key,
  })  : _tabsController = tabsController,
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
            const SizedBox(height: 30),
            //TODO: add logo here and delete text
            const Text('FLUTTIPS'),
            ...HomeNavOptions.values
                .where((element) => element.index != HomeNavOptions.about.index)
                .map(
                  (navOption) => Expanded(
                    child: _TabOption(
                      icon: navOption.icon,
                      isCurrentIndex:
                          navOption.index == _tabsController.activeIndex,
                      onPress: () =>
                          _tabsController.setActiveIndex(navOption.index),
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
                  onPress: () => _tabsController
                      .setActiveIndex(HomeNavOptions.about.index),
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
  final Function() onPress;

  const _TabOption({
    required this.isCurrentIndex,
    required this.icon,
    required this.onPress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = context.theme.colors;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: color.primary.shade100,
      ),
      child: IconButton(
        icon: isCurrentIndex
            ? Icon(
                icon,
                color: color.surface.shade900,
              )
            : Icon(
                icon,
                color: color.surface.shade700,
              ),
        onPressed: onPress,
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
