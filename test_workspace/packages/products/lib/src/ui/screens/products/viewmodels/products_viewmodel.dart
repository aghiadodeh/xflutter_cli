// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:products/src/repositories/product_repository.dart';
import 'package:products/src/models/models.dart';
import 'package:animated_infinite_scroll_pagination/animated_infinite_scroll_pagination.dart';
import 'dart:async';
import 'products_params.dart';
import 'package:core/core.dart';

class ProductsViewModel extends BaseViewModel with PaginationViewModel<Product> {
  late final eventEmitter = EventEmitter<PaginationState<List<Product>>>();
  late final productRepository = ProductRepository();
  late final params = ProductsParams();

  @override
  Future<void> fetchData(int page) async {
    eventEmitter.emitValue(const PaginationLoading());
    callHttpRequest(
      () => productRepository.findAll(page),
      callback: (result, success) {
        if (result?.data != null && success) {
          eventEmitter.emitValue(PaginationSuccess(result!.data!.toList()));
        } else {
          eventEmitter.emitValue(const PaginationError());
        }
        setTotal(result?.total ?? 0);
      },
    );
  }

  @override
  bool areItemsTheSame(Product a, Product b) => a.id == b.id;

  @override
  Stream<PaginationState<List<Product>>> streamSubscription() => eventEmitter.result;

  @override
  void onReady() {
    super.onReady();
    listen();
    getPaginationList();
  }

  @override
  void onInit() {
    // called immediately after the widget is allocated in memory.
    super.onInit();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    productRepository.dispose();
    super.onDispose();
  }
}
