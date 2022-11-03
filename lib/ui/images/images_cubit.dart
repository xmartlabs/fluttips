import 'package:bloc/bloc.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'images_cubit.freezed.dart';

part 'images_state.dart';

class ImagesCubit extends Cubit<ImagesBaseState> {
  //ignore: unused_field
  final GeneralErrorHandler _errorHandler;

  ImagesCubit(this._errorHandler)
      : super(
          ImagesBaseState.state(),
        );
}
