import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fluttips/core/di/di_provider.dart';
import 'package:fluttips/ui/app_router.dart';

part 'global_ui_cubit.freezed.dart';

part 'global_ui_state.dart';

class GlobalUICubit extends Cubit<GlobalUIState> {
  GlobalUICubit() : super(const GlobalUIState.state()) {
    globalRouter.addListener(
      () => emit(
        state.copyWith(
          showUIActionComponent: true,
        ),
      ),
    );
  }

  final AppRouter globalRouter = DiProvider.get();

  void toggleUIActionComponentState() => emit(
        state.copyWith(
          showUIActionComponent: !state.showUIActionComponent,
        ),
      );
}
