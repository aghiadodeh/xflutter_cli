// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangePasswordRequest _$ChangePasswordRequestFromJson(Map json) =>
    _ChangePasswordRequest(oldPassword: json['old_password'] as String?, newPassword: json['new_password'] as String?);

Map<String, dynamic> _$ChangePasswordRequestToJson(_ChangePasswordRequest instance) => <String, dynamic>{
  'old_password': instance.oldPassword,
  'new_password': instance.newPassword,
};
