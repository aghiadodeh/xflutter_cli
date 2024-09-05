// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map json) => _$LoginResponseImpl(
      user: json['user'] == null ? null : User.fromJson(Map<String, dynamic>.from(json['user'] as Map)),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) => <String, dynamic>{
      'user': instance.user?.toJson(),
      'token': instance.token,
    };
