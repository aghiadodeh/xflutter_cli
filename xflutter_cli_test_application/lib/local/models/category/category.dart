/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:isar/isar.dart';
import 'package:xflutter_cli_test_application/models/models.dart';
import '../isar_models.dart';

part 'category.g.dart';

@collection
class IsarCategory {
  Id? isarId;

  @Index(unique: true, replace: true)
  int? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? name;
  List<IsarMedia>? media;

  IsarCategory({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.media,
  });
}

extension IsarCategoryConverter on IsarCategory {
  /// convert [IsarCategory] to [Category]
  Category fromIsar() {
    return Category(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      name: name,
      media: media?.map((e) => e.fromIsar()).toList(),
    );
  }
}

extension CategoryConverter on Category {
  /// convert [Category] to [IsarCategory]
  IsarCategory toIsar() {
    return IsarCategory(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      name: name,
      media: media?.map((e) => e.toIsar()).toList(),
    );
  }
}
