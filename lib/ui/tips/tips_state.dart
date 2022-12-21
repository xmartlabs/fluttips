part of 'tips_cubit.dart';

@freezed
class TipsBaseState with _$TipsBaseState {
  const factory TipsBaseState.state({
    @Default([]) List<Tip> tips,
    @Default(0) int currentPage,
    Tip? currentTip,
  }) = _TipsState;
}
