import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:fluttips/core/di/di_provider.dart';
import 'package:fluttips/core/model/extensions/stock_extensions.dart';
import 'package:fluttips/ui/app_router.dart';
import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fluttips/core/repository/tip_repository.dart';
import 'package:fluttips/core/model/tip.dart';
import 'package:fluttips/ui/image_tip_details/show_image_tip_details_type.dart';

part 'favourites_tip_simple_list_cubit.freezed.dart';

part 'favourites_tip_simple_list_state.dart';

class FavouritesTipSimpleListCubit
    extends Cubit<FavouritesTipSimpleListBaseState> {
  final TipRepository _tipRepository = DiProvider.get();
  final AppRouter _router = DiProvider.get();
  final GeneralErrorHandler _errorHandler;
  late StreamSubscription<List<Tip>> subscriptionToTips;

  FavouritesTipSimpleListCubit(this._errorHandler)
      : super(const FavouritesTipSimpleListBaseState.state()) {
    _subscribeToTips();
  }

  @override
  Future<void> close() async {
    await subscriptionToTips.cancel();
    return super.close();
  }

  void setCurrentPage(int index) => emit(state.copyWith(currentPage: index));

  Future<void> changeFavouriteButton(Tip tip, int index) =>
      _tipRepository.toggleFavouriteTipValue(tip);

  void navigateToTip(Tip tip) {
    _router.navigate(
      FavoritesTipDetailsScreen(
        showTipType: ShowImageTipDetailsType.favourite,
        tip: tip,
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
