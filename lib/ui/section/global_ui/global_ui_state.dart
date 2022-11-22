part of 'global_ui_cubit.dart';

@freezed
class GlobalUIState with _$GlobalUIState {
  const factory GlobalUIState.state({
    @Default(false) bool hideFabMenu,
    @Default(false) bool hideFavouriteFab,
  }) = _GlobalUIState;
}
