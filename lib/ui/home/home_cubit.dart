import 'package:bloc/bloc.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeBaseState> {
  //ignore: unused_field
  final GeneralErrorHandler _errorHandler;

  HomeCubit(this._errorHandler)
      : super(
          HomeBaseState.state(),
        );
}
