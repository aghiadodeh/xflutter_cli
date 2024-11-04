// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map json) => _$ProductImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      category: json['category'] as String?,
      price: json['price'] as num?,
      discountPercentage: json['discountPercentage'] as num?,
      rating: json['rating'] as num?,
      stock: (json['stock'] as num?)?.toInt(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      brand: json['brand'] as String?,
      sku: json['sku'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
      dimensions: json['dimensions'] == null ? null : Dimensions.fromJson(Map<String, dynamic>.from(json['dimensions'] as Map)),
      warrantyInformation: json['warrantyInformation'] as String?,
      shippingInformation: json['shippingInformation'] as String?,
      availabilityStatus: json['availabilityStatus'] as String?,
      reviews: (json['reviews'] as List<dynamic>?)?.map((e) => Review.fromJson(Map<String, dynamic>.from(e as Map))).toList(),
      returnPolicy: json['returnPolicy'] as String?,
      minimumOrderQuantity: (json['minimumOrderQuantity'] as num?)?.toInt(),
      meta: json['meta'] == null ? null : Meta.fromJson(Map<String, dynamic>.from(json['meta'] as Map)),
      images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'rating': instance.rating,
      'stock': instance.stock,
      'tags': instance.tags,
      'brand': instance.brand,
      'sku': instance.sku,
      'weight': instance.weight,
      'dimensions': instance.dimensions?.toJson(),
      'warrantyInformation': instance.warrantyInformation,
      'shippingInformation': instance.shippingInformation,
      'availabilityStatus': instance.availabilityStatus,
      'reviews': instance.reviews?.map((e) => e.toJson()).toList(),
      'returnPolicy': instance.returnPolicy,
      'minimumOrderQuantity': instance.minimumOrderQuantity,
      'meta': instance.meta?.toJson(),
      'images': instance.images,
      'thumbnail': instance.thumbnail,
    };
