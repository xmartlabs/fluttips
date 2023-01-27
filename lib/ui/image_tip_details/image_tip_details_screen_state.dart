part of 'image_tip_details_screen_cubit.dart';

@freezed
class TipsImageDetailsBaseState with _$TipsImageDetailsBaseState {
  const factory TipsImageDetailsBaseState.state({
    @Default([]) List<Tip> tips,
    @Default(0) int currentPage,
    Tip? currentTip,
  }) = _TipsImageDetailsBaseState;
}
