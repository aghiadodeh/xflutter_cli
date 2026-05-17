// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyCodeRequest _$VerifyCodeRequestFromJson(Map json) =>
    _VerifyCodeRequest(email: json['email'] as String?, verificationCode: json['verification_code'] as String?);

Map<String, dynamic> _$VerifyCodeRequestToJson(_VerifyCodeRequest instance) => <String, dynamic>{
  'email': instance.email,
  'verification_code': instance.verificationCode,
};
