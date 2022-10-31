import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fab.freezed.dart';

class Fab extends StatelessWidget {
  final FabState state;
  final IconData? iconSelected;
  final IconData iconNotSelected;
  final VoidCallback? action;

  const Fab({
    Key? key,
    required this.state,
    this.iconSelected,
    required this.iconNotSelected,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: action,
      backgroundColor: state.when(
        notSelected: () => context.theme.colors.surface,
        selected: () => context.theme.colors.primary,
      ),
      foregroundColor: context.theme.colors.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
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
}

@freezed
class FabState with _$FabState {
  const factory FabState.notSelected() = _FabNotSelected;

  const factory FabState.selected() = _FabSelected;
}
