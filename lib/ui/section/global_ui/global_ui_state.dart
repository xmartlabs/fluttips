part of 'global_ui_cubit.dart';

@freezed
class GlobalUIState with _$GlobalUIState {
  const factory GlobalUIState.state({
    @Default(true) bool showUIActionComponent,
  }) = _GlobalUIState;
}
