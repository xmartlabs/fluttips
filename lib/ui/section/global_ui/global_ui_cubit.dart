import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_ui_cubit.freezed.dart';

part 'global_ui_state.dart';

class GlobalUICubit extends Cubit<GlobalUIState> {
  GlobalUICubit() : super(const GlobalUIState.state());

  void toggleUIActionComponentState() => emit(
        state.copyWith(
          showUIActionComponent: !state.showUIActionComponent,
        ),
      );
}
