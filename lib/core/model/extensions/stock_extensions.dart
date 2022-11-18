import 'package:dartx/dartx.dart';
import 'package:rxdart/rxdart.dart';
import 'package:stock/stock.dart';
import 'package:flutter_template/core/common/result.dart';

extension StockStreamExtensions<T> on Stream<StockResponse<T>> {
  Stream<Result<T>> flatMapToResult() => flatMap((response) async* {
        if (response.isData) {
          yield Result.success(response.requireData());
        } else if (response.isError) {
          yield Result.failure((response as StockResponseError).error);
        }
      });

  Stream<T> filterSuccessStockResponseData([Function(Object?)? errorHandler]) =>
      flatMap((response) async* {
        if (response.isData) {
          yield response.requireData();
        } else if (response.isError) {
          errorHandler?.call((response as StockResponseError).error);
        }
      });

  Stream<StockResponse<List<T>>> getTipsStream({
    required Comparable<dynamic> Function(T) sorted,
    Comparable<dynamic> Function(T)? sortedThenBy,
  }) =>
      map<StockResponse<List<T>>>(
        (response) {
          final result = response as StockResponse<List<T>>;
          return result.isData
              ? StockResponse.data(
                  result.origin,
                  result
                      .requireData()
                      .sortedBy(sorted)
                      .thenBy(sortedThenBy ?? sorted)
                      .toList(),
                )
              : result;
        },
      );
}
