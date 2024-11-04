// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_verification_code_request.freezed.dart';
part 'get_verification_code_request.g.dart';

@freezed
class GetVerificationCodeRequest with _$GetVerificationCodeRequest {
  const factory GetVerificationCodeRequest({
    @JsonKey(name: 'email') String? email,
  }) = _GetVerificationCodeRequest;

  factory GetVerificationCodeRequest.fromJson(Map<String, dynamic> json) => _$GetVerificationCodeRequestFromJson(json);
}