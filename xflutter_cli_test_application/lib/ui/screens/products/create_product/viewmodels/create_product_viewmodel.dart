// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:xflutter_cli_test_application/data/models/entities/product/product.dart';
import 'package:xflutter_cli_test_application/events/event_bus.dart';
import 'package:xflutter_cli_test_application/data/repositories/products/products_repository.dart';
import 'package:injectable/injectable.dart';
import 'create_product_params.dart';
import 'package:xflutter_cli_test_application/viewmodels/base_viewmodel.dart';

@LazySingleton(scope: 'createProduct')
class CreateProductViewModel extends BaseViewModel {
  final params = CreateProductParams();
  final ProductsRepository _repository;
  CreateProductViewModel(this._repository);

  @override
  void onInit() {
    // called immediately after the widget is allocated in memory.
    super.onInit();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    _repository.dispose();
    super.onDispose();
  }

  /// create new product
  void submit(Map<String, dynamic> value) {
    eventBus.fire(const SoftKeyboardEvent());
    callHttpRequest<Product>(
      () => _repository.create(Product.fromJson(value)),
      setLoading: baseParams.setLoading,
      callback: (Product? result, bool success) {
        if (result != null && success) {
          // cast event for back to previous screen with created item
          eventBus.fire(RouterBackEvent<Product>(result));
        }
      },
    );
  }
}