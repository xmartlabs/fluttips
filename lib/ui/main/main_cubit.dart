import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fluttips/core/common/extension/stream_future_extensions.dart';
import 'package:fluttips/core/di/di_provider.dart';
import 'package:fluttips/core/repository/session_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fluttips/core/model/onboarding_status.dart';

part 'main_cubit.freezed.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainBaseState> {
  final SessionRepository _sessionRepository = DiProvider.get();

  late StreamSubscription _authenticationStatusSubscription;

  MainCubit() : super(const MainBaseState.state()) {
    _authenticationStatusSubscription = _sessionRepository
        .getSessionStatus()
        .filterSuccess()
        .listen((status) => emit(state.copyWith(appSessionStatus: status)));
  }

  @override
  Future<void> close() async {
    await _authenticationStatusSubscription.cancel();
    await super.close();
  }
}
