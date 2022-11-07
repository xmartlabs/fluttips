import 'package:flutter/material.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';
import 'package:flutter_template/ui/common/fab.dart';

class CustomScaffoldFab extends StatelessWidget {
  final FabState state;
  final IconData? iconSelected;
  final IconData iconNotSelected;
  final VoidCallback? action;
  final Widget? child;

  const CustomScaffoldFab({
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
