import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/ui/app_router.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';
import 'package:flutter_template/ui/home/drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // if (true) return Container();
    return AutoTabsRouter(
      routes: NavOptions.values.map((e) => e.route).toList(),
      builder: (context, child, tabsController) {
        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          key: _scaffoldKey,
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          floatingActionButton: buildFab(context),
          backgroundColor: context.theme.colors.background,
          body: SafeArea(child: child),
          drawer: AppDrawer(
            tabsController: AutoTabsRouter.of(context),
          ),
        );
      },
    );
  }

  FloatingActionButton buildFab(BuildContext context) {
    return FloatingActionButton(
      foregroundColor: context.theme.colors.primary,
      backgroundColor: context.theme.colors.primary.shade100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      onPressed: () {
        _scaffoldKey.currentState!.openDrawer();
      },
      child: Icon(Icons.arrow_forward_ios),
    );
  }
}
