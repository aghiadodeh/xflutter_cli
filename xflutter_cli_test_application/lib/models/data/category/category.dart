/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models.dart';

part 'category.freezed.dart';
part 'category.g.dart';

// ----------(json)----------
/*
{
  "id": 7,
  "created_at": "2023-08-01T17:39:54.000000Z",
  "updated_at": "2023-08-01T17:39:54.000000Z",
  "name": "Ms. Ila McKenzie Sr.",
  "media": [
    {
      "id": 27,
      "model_type": "App\\Models\\Category",
      "model_id": 7,
      "collection_name": "default",
      "name": "analog-ic",
      "file_name": "analog-ic.jpg",
      "mime_type": "image/jpeg",
      "disk": "public",
      "conversions_disk": "public",
      "size": 72558,
      "created_at": "2023-08-01T17:39:54.000000Z",
      "updated_at": "2023-08-01T17:39:54.000000Z",
      "original_url": "http://localhost:8000/storage/27/analog-ic.jpg",
      "preview_url": ""
    }
  ]
} 
*/
// --------------------------
@freezed
class Category with _$Category {
  const factory Category({
    int? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? name,
    List<Media>? media,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}
