// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogImpl _$$BlogImplFromJson(Map json) => _$BlogImpl(
      id: json['_id'] as String?,
      media: json['media'] == null ? null : Media.fromJson(Map<String, dynamic>.from(json['media'] as Map)),
      title: json['title'] as String?,
      description: json['description'] as String?,
      color: json['color'] as String?,
      content: json['content'] as String?,
      archived: json['archived'] as bool?,
      views: (json['views'] as num?)?.toInt(),
      keys: (json['keys'] as List<dynamic>?)?.map((e) => e as String).toList(),
      mId: json['m_id'] as String?,
      createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null ? null : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$BlogImplToJson(_$BlogImpl instance) => <String, dynamic>{
      '_id': instance.id,
      'media': instance.media?.toJson(),
      'title': instance.title,
      'description': instance.description,
      'color': instance.color,
      'content': instance.content,
      'archived': instance.archived,
      'views': instance.views,
      'keys': instance.keys,
      'm_id': instance.mId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
