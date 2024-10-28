// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListResponseImpl<T> _$$ListResponseImplFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    _$ListResponseImpl<T>(
      total: (json['total'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
      cached: json['cached'] as bool? ?? false,
    );

Map<String, dynamic> _$$ListResponseImplToJson<T>(
  _$ListResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total': instance.total,
      'data': instance.data?.map(toJsonT).toList(),
      'cached': instance.cached,
    };
