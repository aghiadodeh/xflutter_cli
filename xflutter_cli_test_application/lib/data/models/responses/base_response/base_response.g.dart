// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseResponse<T> _$BaseResponseFromJson<T>(Map json, T Function(Object? json) fromJsonT) => _BaseResponse<T>(
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
  success: json['success'] as bool?,
  message: json['message'] as String?,
  statusCode: (json['status_code'] as num?)?.toInt(),
  cached: json['cached'] as bool? ?? false,
);

Map<String, dynamic> _$BaseResponseToJson<T>(_BaseResponse<T> instance, Object? Function(T value) toJsonT) => <String, dynamic>{
  'data': _$nullableGenericToJson(instance.data, toJsonT),
  'success': instance.success,
  'message': instance.message,
  'status_code': instance.statusCode,
  'cached': instance.cached,
};

T? _$nullableGenericFromJson<T>(Object? input, T Function(Object? json) fromJson) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(T? input, Object? Function(T value) toJson) => input == null ? null : toJson(input);
