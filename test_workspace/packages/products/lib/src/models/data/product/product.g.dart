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
      discountPercentage: json['discount_percentage'] as num?,
      rating: json['rating'] as num?,
      stock: (json['stock'] as num?)?.toInt(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      brand: json['brand'] as String?,
      sku: json['sku'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
      dimensions: json['dimensions'] == null
          ? null
          : Dimensions.fromJson(
              Map<String, dynamic>.from(json['dimensions'] as Map)),
      warrantyInformation: json['warranty_information'] as String?,
      shippingInformation: json['shipping_information'] as String?,
      availabilityStatus: json['availability_status'] as String?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Reviews.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      returnPolicy: json['return_policy'] as String?,
      minimumOrderQuantity: (json['minimum_order_quantity'] as num?)?.toInt(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(Map<String, dynamic>.from(json['meta'] as Map)),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'price': instance.price,
      'discount_percentage': instance.discountPercentage,
      'rating': instance.rating,
      'stock': instance.stock,
      'tags': instance.tags,
      'brand': instance.brand,
      'sku': instance.sku,
      'weight': instance.weight,
      'dimensions': instance.dimensions?.toJson(),
      'warranty_information': instance.warrantyInformation,
      'shipping_information': instance.shippingInformation,
      'availability_status': instance.availabilityStatus,
      'reviews': instance.reviews?.map((e) => e.toJson()).toList(),
      'return_policy': instance.returnPolicy,
      'minimum_order_quantity': instance.minimumOrderQuantity,
      'meta': instance.meta?.toJson(),
      'images': instance.images,
      'thumbnail': instance.thumbnail,
    };
