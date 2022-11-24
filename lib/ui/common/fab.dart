import 'package:flutter/material.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fab.freezed.dart';

class Fab extends StatelessWidget {
  final FabState state;
  final IconData? iconSelected;
  final IconData iconNotSelected;
  final VoidCallback? action;
  final ShapeBorder border;

  const Fab({
    required this.state,
    required this.iconNotSelected,
    required this.border,
    Key? key,
    this.iconSelected,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => FloatingActionButton(
        onPressed: action,
        backgroundColor: state.when(
          notSelected: () => context.theme.colors.primary.shade100,
          selected: () => context.theme.colors.primary,
        ),
        foregroundColor: context.theme.colors.primary,
        shape: border,
        child: state.when(
          notSelected: () => Icon(
            iconNotSelected,
            color: context.theme.colors.primary,
          ),
          selected: () =>
              Icon(iconSelected, color: context.theme.colors.primary.shade100),
        ),
      );
}

@freezed
class FabState with _$FabState {
  const factory FabState.notSelected() = _FabNotSelected;

  const factory FabState.selected() = _FabSelected;
}
