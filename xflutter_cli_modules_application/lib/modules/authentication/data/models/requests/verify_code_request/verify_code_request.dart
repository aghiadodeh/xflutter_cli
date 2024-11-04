// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_code_request.freezed.dart';
part 'verify_code_request.g.dart';

@freezed
class VerifyCodeRequest with _$VerifyCodeRequest {
  const factory VerifyCodeRequest({
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'verification_code') String? verificationCode,
  }) = _VerifyCodeRequest;

  factory VerifyCodeRequest.fromJson(Map<String, dynamic> json) => _$VerifyCodeRequestFromJson(json);
}
