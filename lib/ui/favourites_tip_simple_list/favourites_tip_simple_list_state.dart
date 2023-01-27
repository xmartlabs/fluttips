part of 'favourites_tip_simple_list_cubit.dart';

@freezed
class FavouritesTipSimpleBaseState with _$FavouritesTipSimpleBaseState {
  const factory FavouritesTipSimpleBaseState.state({
    @Default([]) List<Tip> tips,
    @Default(0) int currentPage,
  }) = _FavouritesTipSimpleBaseState;
}
