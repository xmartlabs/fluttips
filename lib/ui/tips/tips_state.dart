part of 'tips_cubit.dart';

@freezed
class TipsBaseState with _$TipsBaseState {
  const factory TipsBaseState.state({
    required List<Tip> tips,
  }) = _TipsState;
}
