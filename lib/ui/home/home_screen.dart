import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';
import 'package:flutter_template/ui/home/drawer.dart';

import 'package:flutter_template/ui/common/fab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var _hideFab = false;

  @override
  Widget build(BuildContext context) => AutoTabsRouter(
        routes: HomeNavOptions.values.map((e) => e.route).toList(),
        builder: (context, child, tabsController) => Scaffold(
          onDrawerChanged: (stateDrawer) => setState(() {
            _hideFab = stateDrawer;
          }),
          extendBody: true,
          extendBodyBehindAppBar: true,
          key: _scaffoldKey,
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          floatingActionButton: buildFab(context),
          backgroundColor: context.theme.colors.background,
          body: SafeArea(child: child),
          drawer: AppDrawer(
            tabsController: AutoTabsRouter.of(context),
            action: () => _scaffoldKey.currentState!.closeDrawer(),
          ),
        ),
      );

  Widget buildFab(BuildContext context) => Visibility(
        visible: !_hideFab,
        child: Fab(
          state: const FabState.notSelected(),
          border: const CircleBorder(),
          iconNotSelected: Icons.arrow_forward_ios,
          action: () => _scaffoldKey.currentState!.openDrawer(),
        ),
      );
}
