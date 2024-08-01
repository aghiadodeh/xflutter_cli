// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:isar/isar.dart';
import '../isar/isar.dart';
import '../models/isar_models.dart';
import 'package:xflutter_cli_test_application/models/models.dart';
import 'package:xflutter_cli_test_application/utilities/di/di.dart';
import 'package:xflutter_cli_test_application/environment/environment.dart';

class CategoryLocalDataSource {
  Isar get isar => findInstance<Isar>();

  /// [Category] query builder with pagination
  QueryBuilder<IsarCategory, IsarCategory, QAfterLimit> _categoryQueryBuilder({int? page}) {
    return isar.isarCategorys
        .where()
        .sortById()
        .optional(page != null, (q) => q.offset(offset(page!, Environment.perPage)).limit(Environment.perPage));
  }

  /// find [Category] from local-database
  IsarCategory? findOne(int? id) {
    return isar.isarCategorys.where().idEqualTo(id).findFirstSync();
  }

  /// fetch cached [Category] list from local-database
  List<IsarCategory> findAll({int? page}) {
    return _categoryQueryBuilder(page: page).findAllSync();
  }

  /// add/update [Category] into local-database
  void insert(Category data) {
    isar.writeTxnSync(() => isar.isarCategorys.putByIdSync(data.toIsar()));
  }

  /// save list of [Category] in local-database
  void insertAll(List<Category> data, {int? page}) {
    // convert data to isar-entities
    final objects = data.map((e) => e.toIsar()).toList();

    // find old cached list
    final local = findAll(page: page).map((e) => e.id).toList();
    final ids = data.map((e) => e.id).toList();

    // find difference between old list and new list
    final difference = local.where((element) => !ids.contains(element)).toList();

    isar.writeTxnSync(() {
      // delete difference
      isar.isarCategorys.deleteAllByIdSync(difference);

      // save new data
      isar.isarCategorys.putAllByIdSync(objects);
    });
  }

  /// delete [Category] from local-database
  void delete(int? id) {
    isar.writeTxnSync(() => isar.isarCategorys.deleteByIdSync(id));
  }

  /// count all documents in local-database
  int count() {
    return _categoryQueryBuilder().countSync();
  }
}