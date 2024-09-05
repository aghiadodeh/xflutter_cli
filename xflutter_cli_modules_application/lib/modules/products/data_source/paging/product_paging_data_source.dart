// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'dart:async';
import 'package:xflutter_cli_modules_application/common/models/models.dart';
import 'package:xflutter_cli_modules_application/modules/products/data_source/repositories/product_repository.dart';
import 'package:animated_infinite_scroll_pagination/animated_infinite_scroll_pagination.dart';

class ProductsPagingDataSource with AnimatedInfinitePaginationController<Product> {
  late final repository = ProductRepository();

  /// decide whether two object represent the same Item
  @override
  bool areItemsTheSame(Product oldItem, Product newItem) {
    return oldItem.id == newItem.id;
  }

  /// fetch data from repository and emit new state
  @override
  Future<void> fetchData(int page) async {
    // emit loading
    emitState(const PaginationLoadingState());

    // fetch data from server
    try {
      await for (final response in repository.findAll(page)) {
        final result = response.data;
        if (result?.data != null && response.isSuccess) {
          // emit fetched data
          emitState(
            PaginationSuccessState(
              result!.data!.toList(),
              cached: result.cached,
            ),
          );
        } else {
          // emit error
          emitState(const PaginationErrorState());
        }
      }
    } catch (_) {
      // emit error
      emitState(const PaginationErrorState());
    }
  }

  void dispose() {
    repository.dispose();
  }
}
