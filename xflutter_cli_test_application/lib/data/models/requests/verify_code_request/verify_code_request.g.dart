// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyCodeRequest _$VerifyCodeRequestFromJson(Map json) =>
    _VerifyCodeRequest(phone: json['phone'] as String?, verificationCode: json['verification_code'] as String?);

Map<String, dynamic> _$VerifyCodeRequestToJson(_VerifyCodeRequest instance) => <String, dynamic>{
  'phone': instance.phone,
  'verification_code': instance.verificationCode,
};
