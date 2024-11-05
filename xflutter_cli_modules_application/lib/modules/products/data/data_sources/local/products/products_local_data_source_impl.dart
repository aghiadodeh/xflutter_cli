// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'queries/local_products_query_parameters.dart';
import 'products_local_data_source.dart';
import 'package:xflutter_cli_modules_application/common/data/database/app_store.dart';
import 'package:xflutter_cli_modules_application/modules/products/data/models/local/product/local_product.dart';
import 'package:xflutter_cli_modules_application/common/data/database/objectbox.g.dart';

@LazySingleton(scope: 'products', as: ProductsLocalDataSource)
class ProductsLocalDataSourceImpl implements ProductsLocalDataSource {
  final ObjectBoxAppStore _appStore;
  ProductsLocalDataSourceImpl(this._appStore);

  @override
  Future<void> insert(LocalProduct data) => insertAll([data]);

  @override
  Future<void> insertAll(Iterable<LocalProduct> data) async {
    final store = _appStore.openStore();
    // open transaction
    await store.runInTransactionAsync<void, List<LocalProduct>>(
      TxMode.write,
      (Store store, List<LocalProduct> parameter) {
        try {
          final box = store.box<LocalProduct>();

          // find existing items for update
          final ids = parameter.map((e) => e.productId!).toList();
          final query = box.query(LocalProduct_.productId.oneOf(ids)).build();
          final items = query.find();

          // clean up resources
          query.close();

          // assign ids to objects
          for (var item in items) {
            final index = parameter.indexWhere((e) => e.productId == item.productId);
            parameter[index].id = item.id;
          }

          // insert new data, and update existing data
          box.putMany(parameter);
        } catch (error) {
          debugPrint(error.toString());
        }
      },
      data.toList(),
    );

    // clean up resources
    store.close();
  }

  @override
  Future<LocalProduct?> findOne(LocalProductQueryParameters queryParameters) async {
    if (queryParameters.id == null) return null;
    final store = _appStore.openStore();
    // open transaction
    final result = await store.runInTransactionAsync<LocalProduct?, LocalProductQueryParameters>(
      TxMode.read,
      (Store store, LocalProductQueryParameters parameter) {
        try {
          final box = store.box<LocalProduct>();

          // query builder for find item with filters
          final query = box.query().build();
          if (parameter.id != null) {
            // filter on localProduct productId
            query.param(LocalProduct_.productId).value = parameter.id!;
          }

          final item = query.findFirst();

          // mapping item
          if (item != null) _mappingItem(item);

          // clean up resources
          query.close();

          return item;
        } catch (error) {
          debugPrint(error.toString());
          return null;
        }
      },
      queryParameters,
    );
    store.close();
    return result;
  }

  @override
  Future<List<LocalProduct>> findAll(LocalProductsListQueryParameters queryParameters) async {
    final store = _appStore.openStore();
    final result = await store.runInTransactionAsync<List<LocalProduct>, LocalProductsListQueryParameters>(
      TxMode.write,
      (Store store, LocalProductsListQueryParameters parameter) {
        try {
          final box = store.box<LocalProduct>();
          final query = box.query().build();

          // add pagination
          final page = parameter.page;
          final perPage = parameter.perPage;
          if (page != null && perPage != null) {
            query.offset = (perPage * page) - perPage;
            query.limit = perPage;
          }

          // find items
          final items = query.find();

          // mapping items
          for (var item in items) {
            _mappingItem(item);
          }

          // clean up resources
          query.close();

          return items;
        } catch (error) {
          debugPrint(error.toString());
          return [];
        }
      },
      queryParameters,
    );
    store.close();
    return result;
  }

  @override
  Future<int> delete(int? id) async {
    if (id == null) return 0;
    final store = _appStore.openStore();
    final result = await store.runInTransactionAsync<int, int>(
      TxMode.read,
      (Store store, int parameter) {
        try {
          final box = store.box<LocalProduct>();

          // filter item
          final query = box.query(LocalProduct_.productId.equals(id)).build();

          // remove item
          final result = query.remove();

          // clean up resources
          query.close();

          return result;
        } catch (error) {
          debugPrint(error.toString());
          return 0;
        }
      },
      id,
    );
    store.close();
    return result;
  }

  @override
  Future<int> count() async {
    final store = _appStore.openStore();
    final result = await store.runInTransactionAsync<int, dynamic>(
      TxMode.read,
      (Store store, _) {
        try {
          final box = store.box<LocalProduct>();
          final query = box.query().build();

          // count items
          final count = query.count();

          // clean up resources
          query.close();

          return count;
        } catch (error) {
          debugPrint(error.toString());
          return 0;
        }
      },
      null,
    );
    store.close();
    return result;
  }

  /// objectbox require opened [Store] for mapping relations, embedded objects,
  ///
  /// mapping [LocalProduct] for access properties outside store
  void _mappingItem(LocalProduct item) {
    item.dimensions = item.toOneDimensions.target;
    item.meta = item.toOneMeta.target;
    item.reviews = item.toManyReviews.toList();
  }
}
