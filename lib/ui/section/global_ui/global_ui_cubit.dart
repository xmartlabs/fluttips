import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_ui_cubit.freezed.dart';

part 'global_ui_state.dart';

class GlobalUICubit extends Cubit<GlobalUIState> {
  GlobalUICubit() : super(const GlobalUIState.state());

  void toggleFabState() => emit(
        state.copyWith(
          hideFabMenu: !state.hideFabMenu,
          hideFavouriteFab: !state.hideFavouriteFab,
        ),
      );
}
