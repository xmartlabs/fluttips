import 'package:bloc/bloc.dart';
import 'package:fluttips/ui/common/base_bloc_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fluttips/core/di/di_provider.dart';
import 'package:fluttips/ui/app_router.dart';

part 'global_ui_cubit.freezed.dart';

part 'global_ui_state.dart';

class GlobalUICubit extends Cubit<GlobalUIState> {
  final AppRouter globalRouter = DiProvider.get();

  GlobalUICubit() : super(const GlobalUIState.state()) {
    globalRouter.addListener(
      () => emitSafe(
        state.copyWith(
          showUIActionComponent: true,
        ),
      ),
    );
  }

  void toggleUIActionComponentState() => emit(
        state.copyWith(
          showUIActionComponent: !state.showUIActionComponent,
        ),
      );
}
