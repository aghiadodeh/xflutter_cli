// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models.dart';

part 'product.freezed.dart';
part 'product.g.dart';

// ----------(json)----------
/*
{
  "id": 33,
  "name": "Felicia Pacocha DVM",
  "price": 29349.29,
  "original_price": 85077.25,
  "description": "Dolore nobis voluptatem sunt nulla nobis aspernatur.",
  "color": "#bcb60a",
  "size": "XL",
  "status": "public",
  "created_at": "2023-08-01T17:39:54.000000Z",
  "user": {
    "id": 6,
    "full_name": "Skyla Schuppe",
    "email": "theller@example.com",
    "phone": "1-847-614-2172",
    "created_at": "2023-08-01T17:39:54.000000Z"
  },
  "media": [
    {
      "id": 130,
      "model_type": "App\\Models\\Product",
      "model_id": 33,
      "collection_name": "main_picture",
      "name": "posts-3",
      "file_name": "posts-3.jpg",
      "mime_type": "image/jpeg",
      "disk": "public",
      "conversions_disk": "public",
      "size": 818600,
      "created_at": "2023-08-01T17:39:55.000000Z",
      "updated_at": "2023-08-01T17:39:55.000000Z",
      "original_url": "http://localhost:8000/storage/130/posts-3.jpg",
      "preview_url": ""
    }
  ],
  "category": {
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
} 
*/
// --------------------------
@freezed
class Product with _$Product {
  const factory Product({
    int? id,
    String? name,
    num? price,
    num? originalPrice,
    String? description,
    String? color,
    String? size,
    String? status,
    DateTime? createdAt,
    User? user,
    List<Media>? media,
    Category? category,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}