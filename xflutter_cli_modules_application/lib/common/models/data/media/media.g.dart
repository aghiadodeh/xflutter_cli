// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaImpl _$$MediaImplFromJson(Map json) => _$MediaImpl(
      id: json['_id'] as String?,
      path: json['path'] as String?,
      name: json['name'] as String?,
      mediaUrl: json['media_url'] as String?,
      fileType: json['file_type'] == null ? null : FileType.fromJson(Map<String, dynamic>.from(json['file_type'] as Map)),
      theExternal: json['the_external'] as bool?,
      createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$MediaImplToJson(_$MediaImpl instance) => <String, dynamic>{
      '_id': instance.id,
      'path': instance.path,
      'name': instance.name,
      'media_url': instance.mediaUrl,
      'file_type': instance.fileType?.toJson(),
      'the_external': instance.theExternal,
      'created_at': instance.createdAt?.toIso8601String(),
    };
