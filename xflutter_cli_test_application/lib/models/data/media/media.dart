/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media.freezed.dart';
part 'media.g.dart';

// ----------(json)----------
/*
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
*/
// --------------------------
@freezed
class Media with _$Media {
  const factory Media({
    int? id,
  String? modelType,
  num? modelId,
  String? collectionName,
  String? name,
  String? fileName,
  String? mimeType,
  String? disk,
  String? conversionsDisk,
  num? size,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? originalUrl,
  String? previewUrl,
  }) = _Media;
  
  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}