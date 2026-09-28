// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResetPasswordRequest _$ResetPasswordRequestFromJson(Map json) => _ResetPasswordRequest(
  email: json['email'] as String?,
  resetPasswordCode: json['reset_password_code'] as String?,
  newPassword: json['new_password'] as String?,
);

Map<String, dynamic> _$ResetPasswordRequestToJson(_ResetPasswordRequest instance) => <String, dynamic>{
  'email': instance.email,
  'reset_password_code': instance.resetPasswordCode,
  'new_password': instance.newPassword,
};
