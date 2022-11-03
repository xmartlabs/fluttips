import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';
import 'package:flutter_template/ui/app_router.dart';

class AppNavBar extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: NavOptions.values.map((e) => e.route).toList(),
      builder: (context, child, tabsController) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          key: _scaffoldKey,
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          floatingActionButton: FloatingActionButton(
            foregroundColor: context.theme.colors.primary,
            backgroundColor: context.theme.colors.primary.shade100,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r)),
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(Icons.arrow_forward_ios),
          ),
          backgroundColor: context.theme.colors.background,
          body: SafeArea(child: child),
          drawer: _Drawer(
            tabscontroller: tabsRouter,
          ),
        );
      },
    );
  }
}

class _Drawer extends StatelessWidget {
  final TabsRouter tabscontroller;

  const _Drawer({
    Key? key,
    required this.tabscontroller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 90.w,
      backgroundColor: context.theme.colors.primary.shade100,
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('FLUTTIPS'),
          ...NavOptions.values
              .map((navOption) => _TabOption(
                    icon: navOption.icon,
                    isCurrentIndex:
                        navOption.index == tabscontroller.activeIndex,
                    onPress: () {
                      tabscontroller.setActiveIndex(navOption.index);
                    },
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
  videos,
  images,
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
        return Home();
      case NavOptions.videos:
        return Video();
      // TODO: Remove when implemented other screens
      default:
        return Home();
    }
  }
}
