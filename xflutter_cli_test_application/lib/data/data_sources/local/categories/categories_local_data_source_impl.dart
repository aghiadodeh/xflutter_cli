// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'queries/local_categories_query_parameters.dart';
import 'categories_local_data_source.dart';
import 'package:xflutter_cli_test_application/data/database/app_store.dart';
import 'package:xflutter_cli_test_application/data/models/local/category/local_category.dart';
import 'package:xflutter_cli_test_application/data/database/objectbox.g.dart';

@LazySingleton(scope: 'categories', as: CategoriesLocalDataSource)
class CategoriesLocalDataSourceImpl implements CategoriesLocalDataSource {
  final ObjectBoxAppStore _appStore;
  CategoriesLocalDataSourceImpl(this._appStore);

  @override
  Future<void> insert(LocalCategory data) => insertAll([data]);

  @override
  Future<void> insertAll(Iterable<LocalCategory> data) async {
    final store = _appStore.openStore();
    // open transaction
    await store.runInTransactionAsync<void, List<LocalCategory>>(
      TxMode.write,
      (Store store, List<LocalCategory> parameter) {
        try {
          final box = store.box<LocalCategory>();

          // find existing items for update
          final ids = parameter.map((e) => e.categoryId!).toList();
          final query = box.query(LocalCategory_.categoryId.oneOf(ids)).build();
          final items = query.find();

          // clean up resources
          query.close();

          // assign ids to objects
          for (var item in items) {
            final index = parameter.indexWhere((e) => e.categoryId == item.categoryId);
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
  Future<LocalCategory?> findOne(LocalCategoryQueryParameters queryParameters) async {
    if (queryParameters.id == null) return null;
    final store = _appStore.openStore();
    // open transaction
    final result = await store.runInTransactionAsync<LocalCategory?, LocalCategoryQueryParameters>(
      TxMode.read,
      (Store store, LocalCategoryQueryParameters parameter) {
        try {
          final box = store.box<LocalCategory>();

          // query builder for find item with filters
          final query = box.query().build();
          if (parameter.id != null) {
            // filter on localCategory categoryId
            query.param(LocalCategory_.categoryId).value = parameter.id!;
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
  Future<List<LocalCategory>> findAll(LocalCategoriesListQueryParameters queryParameters) async {
    final store = _appStore.openStore();
    final result = await store.runInTransactionAsync<List<LocalCategory>, LocalCategoriesListQueryParameters>(
      TxMode.write,
      (Store store, LocalCategoriesListQueryParameters parameter) {
        try {
          final box = store.box<LocalCategory>();
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
          final box = store.box<LocalCategory>();

          // filter item
          final query = box.query(LocalCategory_.categoryId.equals(id)).build();

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
          final box = store.box<LocalCategory>();
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
  /// mapping [LocalCategory] for access properties outside store
  void _mappingItem(LocalCategory item) {
    item.media = item.toManyMedia.toList();
  }
}
