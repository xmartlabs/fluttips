import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/ui/home/drawer.dart';
import 'package:fluttips/ui/common/fab.dart';
import 'package:fluttips/ui/home/home_cubit.dart';
import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';
import 'package:fluttips/ui/section/global_ui/global_ui_cubit.dart';
import 'package:fluttips/core/common/config.dart';
import 'package:upgrader/upgrader.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => HomeCubit(context.read<ErrorHandlerCubit>()),
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
    final showUIActionComponent = context.select(
      (GlobalUICubit globalUICubit) =>
          globalUICubit.state.showUIActionComponent,
    );
    return AutoTabsRouter(
      routes: HomeNavOptions.values.map((e) => e.route).toList(),
      builder: (context, child, _) => Scaffold(
        onDrawerChanged: (_) => globalCubit.toggleUIActionComponentState(),
        extendBody: true,
        extendBodyBehindAppBar: true,
        key: _scaffoldKey,
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: _buildFab(showUIActionComponent),
        backgroundColor: context.theme.colors.background,
        body: SafeArea(
          child: UpgradeAlert(
              upgrader: Upgrader(
                debugLogging: true,
                showIgnore: false,
                durationUntilAlertAgain: Duration(milliseconds: 50),
              ),
              child: child,),
        ),
        drawer: AppDrawer(
          tabsController: AutoTabsRouter.of(context),
          action: () => _scaffoldKey.currentState!.closeDrawer(),
        ),
      ),
    );
  }

  Widget _buildFab(bool showUIActionComponent) => AnimatedOpacity(
        opacity: showUIActionComponent ? 1.0 : 0.0,
        duration: Config.durationAnimation,
        child: Visibility(
          visible: showUIActionComponent,
          child: Fab(
            state: const FabState.notSelected(),
            border: const CircleBorder(),
            iconNotSelected: Icons.arrow_forward_ios,
            action: () => _scaffoldKey.currentState!.openDrawer(),
          ),
        ),
      );
}
