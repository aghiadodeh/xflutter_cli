// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_request.freezed.dart';
part 'change_password_request.g.dart';

// ----------(json)----------
/*
{
  "old_password": "",
  "new_password": ""
} 
*/
// --------------------------
@freezed
class ChangePasswordRequest with _$ChangePasswordRequest {
  const factory ChangePasswordRequest({
    String? oldPassword,
    String? newPassword,
  }) = _ChangePasswordRequest;

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) => _$ChangePasswordRequestFromJson(json);
}
