// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map json) => _Category(
  id: (json['id'] as num?)?.toInt(),
  createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null ? null : DateTime.parse(json['updated_at'] as String),
  name: json['name'] as String?,
  media: (json['media'] as List<dynamic>?)?.map((e) => Media.fromJson(Map<String, dynamic>.from(e as Map))).toList(),
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'name': instance.name,
  'media': instance.media?.map((e) => e.toJson()).toList(),
};
