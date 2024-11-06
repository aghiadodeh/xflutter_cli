// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'dart:async';
import 'package:xflutter_cli_modules_application/modules/categories/data/models/entities/category/category.dart';

abstract class CategoriesRepository {
  Future<Category?> create(Category data);

  Future<Category?> update(int? id, Category data);

  Future<List<Category>> findAll({int? page});

  Future<Category?> findOne(int? id);

  Future<int> delete(int? id);

  Future<int> count();

  void dispose();
}
