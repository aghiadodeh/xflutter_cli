// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyCodeRequestImpl _$$VerifyCodeRequestImplFromJson(Map json) =>
    _$VerifyCodeRequestImpl(
      phone: json['phone'] as String?,
      verificationCode: json['verification_code'] as String?,
    );

Map<String, dynamic> _$$VerifyCodeRequestImplToJson(
        _$VerifyCodeRequestImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'verification_code': instance.verificationCode,
    };
