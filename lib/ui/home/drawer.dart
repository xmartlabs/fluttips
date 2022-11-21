import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/extensions/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/ui/app_router.dart';

class AppDrawer extends StatelessWidget {
  final TabsRouter _tabsController;
  final VoidCallback? action;

  const AppDrawer({
    required TabsRouter tabsController,
    Key? key,
    this.action,
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
                .map(
                  (navOption) => _TabOption(
                    icon: navOption.icon,
                    isCurrentIndex:
                        navOption.index == _tabsController.activeIndex,
                    onPress: () =>
                        _tabsController.setActiveIndex(navOption.index),
                  ),
                )
                .toList(),
            const SizedBox(height: 30),
            IconButton(
              onPressed: action,
              icon: const Icon(Icons.arrow_back_ios_new),
              color: context.theme.colors.surface.shade700,
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
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: color.primary.shade100,
      ),
      child: IconButton(
        icon: isCurrentIndex
            ? Icon(
                icon,
                color: color.primary,
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
}

extension NavExtensions on HomeNavOptions {
  IconData get icon {
    switch (this) {
      case HomeNavOptions.videos:
        return Icons.play_circle_outline_outlined;
      case HomeNavOptions.images:
        return Icons.image_outlined;
      case HomeNavOptions.favourites:
        return Icons.star_border;
    }
  }

  PageRouteInfo<dynamic> get route {
    switch (this) {
      case HomeNavOptions.images:
        return const TipsScreenRoute();
      case HomeNavOptions.videos:
        return const VideosScreenRoute();
      // TODO: Remove when implemented other screens
      case HomeNavOptions.favourites:
        return const TipsScreenRoute();
    }
  }
}
