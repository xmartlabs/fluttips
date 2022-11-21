part of 'favourites_tips_cubit.dart';

@freezed
class FavouritesTipsBaseState with _$FavouritesTipsBaseState {
  const factory FavouritesTipsBaseState.state({
    @Default([]) List<Tip> tips,
    @Default(0) int currentPage,
  }) = _TipsState;
}
