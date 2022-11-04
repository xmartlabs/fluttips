import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';
import 'package:flutter_template/ui/app_router.dart';

class AppDrawer extends StatelessWidget {
  final TabsRouter _tabsController;

  const AppDrawer({
    Key? key,
    required TabsRouter tabsController,
  })  : _tabsController = tabsController,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 90.w,
      backgroundColor: context.theme.colors.primary.shade100,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16.r),
              bottomRight: Radius.circular(16.r))),
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('FLUTTIPS'),
          ...NavOptions.values
              .map((navOption) => _TabOption(
                    icon: navOption.icon,
                    isCurrentIndex:
                        navOption.index == _tabsController.activeIndex,
                    onPress: () =>
                        _tabsController.setActiveIndex(navOption.index),
                  ))
              .toList(),
          SizedBox(height: 30),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new),
            color: context.theme.colors.surface.shade700,
          ),
        ],
      ),
    );
  }
}

class _TabOption extends StatelessWidget {
  final bool isCurrentIndex;
  final IconData icon;
  final Function() onPress;

  const _TabOption({
    Key? key,
    required this.isCurrentIndex,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: context.theme.colors.primary.shade100,
      ),
      child: IconButton(
        icon: isCurrentIndex
            ? Icon(
                icon,
                color: context.theme.colors.primary,
              )
            : Icon(
                icon,
                color: context.theme.colors.surface.shade700,
              ),
        onPressed: onPress,
      ),
    );
  }
}

enum NavOptions {
  images,
  videos,
  favourites,
}

extension NavExtensions on NavOptions {
  IconData get icon {
    switch (this) {
      case NavOptions.videos:
        return Icons.play_circle_outline_outlined;
      case NavOptions.images:
        return Icons.image_outlined;
      case NavOptions.favourites:
        return Icons.star_border;
    }
  }

  PageRouteInfo<dynamic> get route {
    switch (this) {
      case NavOptions.images:
        return ImagesScreenRoute();
      case NavOptions.videos:
        return VideosScreenRoute();
      // TODO: Remove when implemented other screens
      case NavOptions.favourites:
        return ImagesScreenRoute();
    }
  }
}
