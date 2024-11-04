// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'dart:async';
import 'package:xflutter_cli_modules_application/common/data/models/responses/base_response/base_response.dart';
import 'package:xflutter_cli_modules_application/modules/authentication/data/models/requests/login_request/login_request.dart';
import 'package:xflutter_cli_modules_application/modules/authentication/data/models/requests/verify_code_request/verify_code_request.dart';
import 'package:xflutter_cli_modules_application/modules/authentication/data/models/requests/get_verification_code_request/get_verification_code_request.dart';
import 'package:xflutter_cli_modules_application/modules/authentication/data/models/requests/register_request/register_request.dart';
import 'package:xflutter_cli_modules_application/modules/authentication/data/models/requests/reset_password_request/reset_password_request.dart';
import 'package:xflutter_cli_modules_application/modules/authentication/data/models/requests/change_password_request/change_password_request.dart';

abstract class AuthenticationRepository {
  Future<BaseResponse<dynamic>> login(LoginRequest data);

  Future<BaseResponse<dynamic>> verifyPinCode(VerifyCodeRequest data);

  Future<BaseResponse<dynamic>> resendVerificationCode(GetVerificationCodeRequest data);

  Future<BaseResponse<dynamic>> register(RegisterRequest data);

  Future<BaseResponse<dynamic>> forgetPassword(GetVerificationCodeRequest data);

  Future<BaseResponse<dynamic>> resetPassword(ResetPasswordRequest data);

  Future<BaseResponse<dynamic>> changePassword(ChangePasswordRequest data);

  void dispose();
}