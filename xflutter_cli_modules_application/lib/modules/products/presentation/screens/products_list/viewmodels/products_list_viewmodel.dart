// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:xflutter_cli_modules_application/modules/products/data/models/entities/product/product.dart';
import 'package:xflutter_cli_modules_application/modules/products/data/repositories/products/products_repository.dart';
import 'package:xflutter_cli_modules_application/modules/products/mediators/paging/products_paging_controller.dart';
import 'package:injectable/injectable.dart';
import 'products_list_params.dart';
import 'package:xflutter_cli_modules_application/common/viewmodels/base_viewmodel.dart';

@LazySingleton(scope: 'productsList')
class ProductsListViewModel extends BaseViewModel {
  final params = ProductsListParams();
  final ProductsRepository _repository;
  ProductsListViewModel(this._repository, this._productsPagingController);
  final ProductsPagingController _productsPagingController;

  @override
  void onInit() {
    // called immediately after the widget is allocated in memory.
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    // fetch first products chuck.
    _productsPagingController.fetchNewChunk();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    _productsPagingController.dispose();
    super.onDispose();
  }

  /// delete [product] from list
  void deleteProduct(Product product) {
    callHttpRequest(
      () => _repository.delete(product.id),
      setLoading: baseParams.setLoading,
      callback: (result, success) {
        if (success) {
          // remove product from the list
          _productsPagingController.deleteProduct(product);
        }
      },
    );
  }

  /// add inserted [product] to [_productsPagingController]
  void insertProduct(Product product) {
    _productsPagingController.insertProduct(product);
  }

  /// update [product] in [_productsPagingController]
  void updateProduct(Product product) {
    _productsPagingController.updateProduct(product);
  }
}
