// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListResponse<T> _$ListResponseFromJson<T>(Map json, T Function(Object? json) fromJsonT) => _ListResponse<T>(
  total: (json['total'] as num?)?.toInt(),
  data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
  cached: json['cached'] as bool? ?? false,
);

Map<String, dynamic> _$ListResponseToJson<T>(_ListResponse<T> instance, Object? Function(T value) toJsonT) => <String, dynamic>{
  'total': instance.total,
  'data': instance.data?.map(toJsonT).toList(),
  'cached': instance.cached,
};
