import 'package:flutter/material.dart';
import 'package:flutter_template/ui/common/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';
import 'package:flutter_template/ui/common/fab.dart';

class MainScaffoldWithFab extends StatelessWidget {
  final FabState state;
  final IconData? iconSelected;
  final IconData iconNotSelected;
  final VoidCallback? action;
  final Widget? child;
  final ShapeBorder border;
  final bool? visibility;

  const MainScaffoldWithFab({
    required this.state,
    required this.iconNotSelected,
    required this.border,
    Key? key,
    this.iconSelected,
    this.action,
    this.child,
    this.visibility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.theme.colors.background,
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Visibility(
            visible: visibility ?? true,
            child: Fab(
              state: state,
              iconNotSelected: iconNotSelected,
              action: action,
              iconSelected: iconSelected,
              border: border,
            ),
          ),
        ),
        body: child,
      );
}
