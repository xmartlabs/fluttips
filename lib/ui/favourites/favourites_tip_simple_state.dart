part of 'favourites_tips_cubit.dart';

@freezed
class FavouritesTipSimpleBaseState with _$FavouritesTipSimpleBaseState {
  const factory FavouritesTipSimpleBaseState.state({
    @Default([]) List<Tip> tips,
    @Default(0) int currentPage,
  }) = _FavouritesTipSimpleBaseState;
}
