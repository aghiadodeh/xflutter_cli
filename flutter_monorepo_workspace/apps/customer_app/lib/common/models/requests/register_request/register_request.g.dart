// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterRequestImpl _$$RegisterRequestImplFromJson(Map json) => _$RegisterRequestImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      countryCode: json['country_code'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$RegisterRequestImplToJson(_$RegisterRequestImpl instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'country_code': instance.countryCode,
      'phone': instance.phone,
    };
