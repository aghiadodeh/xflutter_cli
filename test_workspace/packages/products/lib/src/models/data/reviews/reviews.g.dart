// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewsImpl _$$ReviewsImplFromJson(Map json) => _$ReviewsImpl(
      rating: (json['rating'] as num?)?.toInt(),
      comment: json['comment'] as String?,
      date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
      reviewerName: json['reviewer_name'] as String?,
      reviewerEmail: json['reviewer_email'] as String?,
    );

Map<String, dynamic> _$$ReviewsImplToJson(_$ReviewsImpl instance) => <String, dynamic>{
      'rating': instance.rating,
      'comment': instance.comment,
      'date': instance.date?.toIso8601String(),
      'reviewer_name': instance.reviewerName,
      'reviewer_email': instance.reviewerEmail,
    };
