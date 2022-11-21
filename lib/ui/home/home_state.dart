part of 'home_cubit.dart';

@freezed
class HomeBaseState with _$HomeBaseState {
  const factory HomeBaseState.state({
    @Default(false) bool hideFabMenu,
    @Default(true) bool hideFavouriteFab,
  }) = _HomeState;
}
