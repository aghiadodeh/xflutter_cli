// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaImpl _$$MediaImplFromJson(Map json) => _$MediaImpl(
      id: (json['id'] as num?)?.toInt(),
      modelType: json['model_type'] as String?,
      modelId: (json['model_id'] as num?)?.toInt(),
      collectionName: json['collection_name'] as String?,
      name: json['name'] as String?,
      fileName: json['file_name'] as String?,
      mimeType: json['mime_type'] as String?,
      disk: json['disk'] as String?,
      conversionsDisk: json['conversions_disk'] as String?,
      size: (json['size'] as num?)?.toInt(),
      createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null ? null : DateTime.parse(json['updated_at'] as String),
      originalUrl: json['original_url'] as String?,
      previewUrl: json['preview_url'] as String?,
    );

Map<String, dynamic> _$$MediaImplToJson(_$MediaImpl instance) => <String, dynamic>{
      'id': instance.id,
      'model_type': instance.modelType,
      'model_id': instance.modelId,
      'collection_name': instance.collectionName,
      'name': instance.name,
      'file_name': instance.fileName,
      'mime_type': instance.mimeType,
      'disk': instance.disk,
      'conversions_disk': instance.conversionsDisk,
      'size': instance.size,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'original_url': instance.originalUrl,
      'preview_url': instance.previewUrl,
    };
