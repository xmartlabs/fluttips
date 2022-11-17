import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_template/core/di/di_provider.dart';
import 'package:flutter_template/core/model/extensions/stock_extensions.dart';
import 'package:flutter_template/ui/app_router.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/core/repository/tip_repository.dart';
import 'package:flutter_template/core/model/tip.dart';
import 'package:flutter_template/ui/tips/show_tips_type.dart';

part 'favourites_tips_cubit.freezed.dart';

part 'favourites_tips_state.dart';

class FavouritesTipsCubit extends Cubit<FavouritesTipsBaseState> {
  final GeneralErrorHandler _errorHandler;

  late StreamSubscription<List<Tip>> subscriptionToTips;
  final TipRepository _tipRepository = DiProvider.get();
  final AppRouter _router = DiProvider.get();

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

  void navigateToTip(Tip tip) {
    _router.navigate(
      ListFavouritesTipsScreenRoute(
        showTipType: ShowTipsType.favourite,
        tip: tip,
        action: _router.navigateBack,
      ),
    );
  }

  void _subscribeToTips() {
    subscriptionToTips = _tipRepository
        .getFavouritesTips()
        .filterSuccessStockResponseData(_errorHandler.handleError)
        .listen((tips) {
      emit(state.copyWith(tips: tips));
    });
  }
}
