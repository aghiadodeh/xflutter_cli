// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePasswordRequestImpl _$$ChangePasswordRequestImplFromJson(Map json) => _$ChangePasswordRequestImpl(
      oldPassword: json['old_password'] as String?,
      newPassword: json['new_password'] as String?,
    );

Map<String, dynamic> _$$ChangePasswordRequestImplToJson(_$ChangePasswordRequestImpl instance) => <String, dynamic>{
      'old_password': instance.oldPassword,
      'new_password': instance.newPassword,
    };
