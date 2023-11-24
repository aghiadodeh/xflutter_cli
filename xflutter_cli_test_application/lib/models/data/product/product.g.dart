// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map json) => _$ProductImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: json['price'] as num?,
      originalPrice: json['original_price'] as num?,
      description: json['description'] as String?,
      color: json['color'] as String?,
      size: json['size'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(Map<String, dynamic>.from(json['user'] as Map)),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      category: json['category'] == null
          ? null
          : Category.fromJson(
              Map<String, dynamic>.from(json['category'] as Map)),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'original_price': instance.originalPrice,
      'description': instance.description,
      'color': instance.color,
      'size': instance.size,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'user': instance.user?.toJson(),
      'media': instance.media?.map((e) => e.toJson()).toList(),
      'category': instance.category?.toJson(),
    };
