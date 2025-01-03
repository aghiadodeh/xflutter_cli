// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:freezed_annotation/freezed_annotation.dart';
import '../media/media.dart';
part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  const factory Category({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'media') List<Media>? media,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}
