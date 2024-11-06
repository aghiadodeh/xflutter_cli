// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'dart:async';
import 'package:injectable/injectable.dart';
import 'categories_repository.dart';
import 'package:xflutter_cli_modules_application/modules/categories/data/data_sources/local/categories/queries/local_categories_query_parameters.dart';
import 'package:xflutter_cli_modules_application/modules/categories/data/models/entities/category/category.dart';
import 'package:xflutter_cli_modules_application/modules/categories/data/data_sources/local/categories/categories_local_data_source.dart';
import 'package:xflutter_cli_modules_application/modules/categories/data/models/local/category/local_category.dart';
import 'package:xflutter_cli_modules_application/common/data/repositories/base_repository.dart';
import 'package:xflutter_cli_modules_application/common/environments/environments.dart';
import 'package:xflutter_cli_modules_application/core/extensions/di_extension.dart';

@LazySingleton(scope: 'categories', as: CategoriesRepository)
class CategoriesRepositoryImpl extends BaseRepository implements CategoriesRepository {
  final CategoriesLocalDataSource _localDataSource;

  CategoriesRepositoryImpl(this._localDataSource);

  @override
  Future<Category?> create(Category data) async {
    final item = LocalCategory.fromEntity(data);
    await _localDataSource.insert(item);
    return findOne(item.id);
  }

  @override
  Future<Category?> update(int? id, Category data) async {
    final item = LocalCategory.fromEntity(data);
    await _localDataSource.insert(item);
    return findOne(id);
  }

  @override
  Future<List<Category>> findAll({int? page}) async {
    final perPage = getIt<AppEnvironment>().perPage;
    final items = await _localDataSource.findAll(LocalCategoriesListQueryParameters(page: page, perPage: perPage));
    return items.map((e) => e.fromLocal()).toList();
  }

  @override
  Future<Category?> findOne(int? id) async {
    final item = await _localDataSource.findOne(LocalCategoryQueryParameters(id: id));
    return item?.fromLocal();
  }

  @override
  Future<int> delete(int? id) {
    return _localDataSource.delete(id);
  }

  @override
  Future<int> count() {
    return _localDataSource.count();
  }
}
