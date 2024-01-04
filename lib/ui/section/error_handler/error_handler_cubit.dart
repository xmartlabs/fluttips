import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttips/core/common/logger.dart';
import 'package:fluttips/ui/section/error_handler/general_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_handler_cubit.freezed.dart';

part 'error_handler_state.dart';

class ErrorHandlerCubit extends Cubit<ErrorHandlerState>
    implements GeneralErrorHandler {
  ErrorHandlerCubit() : super(const ErrorHandlerState.init());

  @override
  void handleError(
    Object? error, [
    StackTrace? stacktrace,
    VoidCallback? retry,
  ]) {
    if (error is DioError &&
        (error.type == DioErrorType.connectTimeout ||
            error.type == DioErrorType.receiveTimeout)) {
      emit(const ErrorHandlerState.internetError());
    } else if (error is GeneralError) {
      emit(ErrorHandlerState.generalError(error.title, error.description));
    } else {
      Logger.w("Unknown error", error, stacktrace);
      emit(ErrorHandlerState.unknownError(error));
    }
  }
}

abstract interface class GeneralErrorHandler {
  void handleError(
    Object? error, [
    StackTrace? stacktrace,
    VoidCallback? retry,
  ]);
}
