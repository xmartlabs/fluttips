import 'package:rxdart/rxdart.dart';
import 'package:stock/stock.dart';
import 'package:fluttips/core/common/result.dart';

extension StockStreamExtensions<T> on Stream<StockResponse<T>> {
  Stream<Result<T>> flatMapToResult() => flatMap((response) async* {
        if (response.isData) {
          yield Result.success(response.requireData());
        } else if (response.isError) {
          yield Result.failure((response as StockResponseError).error);
        }
      });

  Stream<T> filterSuccessStockResponseData(
          [Function(Object?, StackTrace?)? errorHandler]) =>
      flatMap((response) async* {
        if (response.isData) {
          yield response.requireData();
        } else if (response.isError) {
          final stockError = response as StockResponseError;
          errorHandler?.call(stockError.error, stockError.stackTrace);
        }
      });
}
