// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_request.freezed.dart';
part 'reset_password_request.g.dart';

// ----------(json)----------
/*
{
  "email": "",
  "reset_password_code": "",
  "new_password": ""
} 
*/
// --------------------------
@freezed
class ResetPasswordRequest with _$ResetPasswordRequest {
  const factory ResetPasswordRequest({
    String? email,
    String? resetPasswordCode,
    String? newPassword,
  }) = _ResetPasswordRequest;

  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) => _$ResetPasswordRequestFromJson(json);
}
