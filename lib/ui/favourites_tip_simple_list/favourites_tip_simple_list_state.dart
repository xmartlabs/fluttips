part of 'favourites_tip_simple_list_cubit.dart';

@freezed
class FavouritesTipSimpleListBaseState with _$FavouritesTipSimpleListBaseState {
  const factory FavouritesTipSimpleListBaseState.state({
    @Default([]) List<Tip> tips,
    @Default(0) int currentPage,
  }) = _FavouritesTipsSimpleListState;
}
