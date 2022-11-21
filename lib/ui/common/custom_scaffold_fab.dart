import 'package:flutter/material.dart';
import 'package:fluttips/ui/extensions/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/ui/common/fab.dart';

class MainScaffoldWithFab extends StatelessWidget {
  final FabState state;
  final IconData? iconSelected;
  final IconData iconNotSelected;
  final VoidCallback? action;
  final Widget? child;

  const MainScaffoldWithFab({
    required this.state,
    required this.iconNotSelected,
    Key? key,
    this.iconSelected,
    this.action,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.theme.colors.background,
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Fab(
          state: state,
          iconNotSelected: iconNotSelected,
          action: action,
          iconSelected: iconSelected,
        ),
        body: child,
      );
}
