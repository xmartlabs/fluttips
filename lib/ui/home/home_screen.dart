import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/ui/common/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';
import 'package:flutter_template/ui/home/drawer.dart';

import 'package:flutter_template/ui/common/fab.dart';
import 'package:flutter_template/ui/home/home_cubit.dart';

import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';

import 'package:flutter_template/ui/section/global_ui/global_ui_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeCubit(context.read<ErrorHandlerCubit>()),
          ),
          BlocProvider(create: (context) => GlobalUICubit()),
        ],
        child: const HomeContentScreen(),
      );
}

class HomeContentScreen extends StatefulWidget {
  const HomeContentScreen({Key? key}) : super(key: key);

  @override
  State<HomeContentScreen> createState() => _HomeContentScreenState();
}

class _HomeContentScreenState extends State<HomeContentScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final globalCubit = context.read<GlobalUICubit>();
    return AutoTabsRouter(
      routes: HomeNavOptions.values.map((e) => e.route).toList(),
      builder: (context, child, _) => Scaffold(
        onDrawerChanged: (_) => globalCubit.toggleFabState(),
        extendBody: true,
        extendBodyBehindAppBar: true,
        key: _scaffoldKey,
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: _buildFab(),
        backgroundColor: context.theme.colors.background,
        body: SafeArea(child: child),
        drawer: AppDrawer(
          tabsController: AutoTabsRouter.of(context),
          action: () => _scaffoldKey.currentState!.closeDrawer(),
        ),
      ),
    );
  }

  Widget _buildFab() => BlocBuilder<GlobalUICubit, GlobalUIState>(
        builder: (context, state) => AnimatedOpacity(
          opacity: !state.hideFabMenu ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 10),
          child: Visibility(
            visible: !state.hideFabMenu,
            child: Fab(
              state: const FabState.notSelected(),
              border: const CircleBorder(),
              iconNotSelected: Icons.arrow_forward_ios,
              action: () => _scaffoldKey.currentState!.openDrawer(),
            ),
          ),
        ),
      );
}
