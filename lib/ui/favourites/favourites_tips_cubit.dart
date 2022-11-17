import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_template/core/common/extension/stream_future_extensions.dart';
import 'package:flutter_template/core/di/di_provider.dart';
import 'package:flutter_template/ui/app_router.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/core/repository/tip_repository.dart';
import 'package:flutter_template/core/model/tip.dart';
import 'package:stock/stock.dart';
import 'package:flutter_template/ui/tips/show_tips_type.dart';

part 'favourites_tips_cubit.freezed.dart';

part 'favourites_tips_state.dart';

class FavouritesTipsCubit extends Cubit<FavouritesTipsBaseState> {
  //ignore: unused_field
  final AppRouter _router = DiProvider.get();
  final TipRepository _tipRepository = DiProvider.get();

  final GeneralErrorHandler _errorHandler;

  late StreamSubscription<List<Tip>> subscriptionToTips;

  FavouritesTipsCubit(this._errorHandler)
      : super(const FavouritesTipsBaseState.state()) {
    _subscribeToTips();
  }

  @override
  Future<void> close() async {
    await subscriptionToTips.cancel();
    return super.close();
  }

  void setCurrentPage(int index) => emit(state.copyWith(currentPage: index));

  Future<void> changeFavouriteButton(Tip tip) =>
      _tipRepository.toggleFavouriteTip(tip);

  void change(Tip tip) {
    _router.navigate(
      ListFavouritesTipsScreenRoute(
        showTipType: ShowTipsType.favourite,
        tip: tip,
        action: () => _router.navigate(
          const HomeScreenRoute(
            children: [HomeFavouritesTipsScreenRoute()],
          ),
        ),
      ),
    );
  }

  void _subscribeToTips() {
    subscriptionToTips = _tipRepository
        .getFavouritesTips()
        .filterSuccess(_errorHandler.handleError)
        .where((event) => event.isData)
        .map((event) => event.requireData())
        .listen((tips) {
      emit(state.copyWith(tips: tips));
    });
  }
}
