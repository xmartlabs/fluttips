import 'package:flutter/material.dart';
import 'package:flutter_template/ui/theme/app_colors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fab_button.freezed.dart';

class FavButtonScreen extends StatelessWidget {
  final FavButtonState state;

  const FavButtonScreen({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      color: state.when(
          notSelected: () => AppColors.getColorScheme().surface,
          selected: () => AppColors.getColorScheme().primary),
      icon: state.when(
        notSelected: () =>
            Icon(Icons.star, color: AppColors.getColorScheme().primary),
        selected: () =>
            Icon(Icons.star, color: AppColors.getColorScheme().surface),
      ),
    );
  }
}

@freezed
class FavButtonState with _$FavButtonState {
  const factory FavButtonState.notSelected() = _FavButtonState;
  const factory FavButtonState.selected() = _FavButtonState;
}
