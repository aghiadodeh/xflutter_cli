// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:isar/isar.dart';
import 'package:xflutter_cli_test_application/data_source/local/isar.dart';
import 'package:xflutter_cli_test_application/data_source/local/models/isar_models.dart';
import 'package:xflutter_cli_test_application/models/models.dart';
import 'package:xflutter_cli_test_application/utilities/di/di.dart';
import 'package:xflutter_cli_test_application/environment/environment.dart';
import 'package:xflutter_cli_test_application/data_source/local/providers/user_local_data_provider.dart';
import 'package:xflutter_cli_test_application/data_source/local/providers/category_local_data_provider.dart';

class ProductLocalDataProvider {
  Isar get isar => findInstance<Isar>();
  final userLocalDataProvider = UserLocalDataProvider();
  final categoryLocalDataProvider = CategoryLocalDataProvider();

  /// [Product] query builder with pagination
  QueryBuilder<IsarProduct, IsarProduct, QAfterLimit> _productQueryBuilder({int? page}) {
    return isar.isarProducts
        .where()
        .sortById()
        .optional(page != null, (q) => q.offset(offset(page!, Environment.perPage)).limit(Environment.perPage));
  }

  /// find [Product] from local-database
  IsarProduct? findOne(int? id) {
    return isar.isarProducts.where().idEqualTo(id).findFirstSync();
  }

  /// fetch cached [Product] list from local-database
  List<IsarProduct> findAll({int? page}) {
    return _productQueryBuilder(page: page).findAllSync();
  }

  /// add/update [Product] into local-database
  void insert(Product data) {
    isar.writeTxnSync(() => isar.isarProducts.putByIdSync(data.toIsar()));
  }

  /// save list of [Product] in local-database
  void insertAll(List<Product> data, {int? page}) {
    // insert related users list
    _insertUsers(data.map((e) => e.user));

    // insert related categories list
    _insertCategories(data.map((e) => e.category));
    // convert data to isar-entities
    final objects = data.map((e) {
      final item = e.toIsar();

      final user = userLocalDataProvider.findOne(item.id);
      if (user != null) item.user.value = user;

      final category = categoryLocalDataProvider.findOne(item.id);
      if (category != null) item.category.value = category;

      return item;
    }).toList();

    // find old cached list
    final local = findAll(page: page).map((e) => e.id).toList();
    final ids = data.map((e) => e.id).toList();

    // find difference between old list and new list
    final difference = local.where((element) => !ids.contains(element)).toList();

    isar.writeTxnSync(() {
      // delete difference
      isar.isarProducts.deleteAllByIdSync(difference);

      // save new data
      isar.isarProducts.putAllByIdSync(objects);
    });
  }

  /// delete [Product] from local-database
  void delete(int? id) {
    isar.writeTxnSync(() => isar.isarProducts.deleteByIdSync(id));
  }

  /// count all documents in local-database
  int count() {
    return _productQueryBuilder().countSync();
  }

  /// insert related [User] list
  void _insertUsers(Iterable<User?> data) {
    for (final item in data) {
      if (item == null) continue;

      // check if item cached before
      final cachedItem = userLocalDataProvider.findOne(item.id);

      // item not cached, insert into local-database
      if (cachedItem == null) userLocalDataProvider.insert(item);
    }
  }

  /// insert related [Category] list
  void _insertCategories(Iterable<Category?> data) {
    for (final item in data) {
      if (item == null) continue;

      // check if item cached before
      final cachedItem = categoryLocalDataProvider.findOne(item.id);

      // item not cached, insert into local-database
      if (cachedItem == null) categoryLocalDataProvider.insert(item);
    }
  }
}