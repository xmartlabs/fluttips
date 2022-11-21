import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';

part 'home_cubit.freezed.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeBaseState> {
  // ignore: unused_field
  final GeneralErrorHandler _errorHandler;

  HomeCubit(this._errorHandler) : super(const HomeBaseState.state());

  void setHomeFabState(bool stateDrawer) =>
      emit(state.copyWith(hideFabMenu: stateDrawer));

  void setToggleState() {
    emit(state.copyWith(hideFabMenu: !state.hideFabMenu));
    emit(state.copyWith(hideFavouriteFab: !state.hideFavouriteFab));
  }
}
