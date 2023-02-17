import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension CubitExtensions<T> on Cubit<T> {
  @protected
  void emitSafe(T state) {
    if (!isClosed) {
      // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
      emit(state);
    }
  }
}
