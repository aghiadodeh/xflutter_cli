// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'authentication_repository.dart';
import 'package:xflutter_cli_modules_application/common/data/models/responses/base_response/base_response.dart';
import 'package:xflutter_cli_modules_application/modules/authentication/data/models/requests/login_request/login_request.dart';
import 'package:xflutter_cli_modules_application/modules/authentication/data/models/requests/verify_code_request/verify_code_request.dart';
import 'package:xflutter_cli_modules_application/modules/authentication/data/models/requests/get_verification_code_request/get_verification_code_request.dart';
import 'package:xflutter_cli_modules_application/modules/authentication/data/models/requests/register_request/register_request.dart';
import 'package:xflutter_cli_modules_application/modules/authentication/data/models/requests/reset_password_request/reset_password_request.dart';
import 'package:xflutter_cli_modules_application/modules/authentication/data/models/requests/change_password_request/change_password_request.dart';
import 'package:xflutter_cli_modules_application/common/data/repositories/base_repository.dart';
import 'package:xflutter_cli_modules_application/modules/authentication/data/data_sources/remote/authentication_rest_client/authentication_rest_client.dart';

@LazySingleton(scope: 'authentication', as: AuthenticationRepository)
class AuthenticationRepositoryImpl extends BaseRepository implements AuthenticationRepository {
  final AuthenticationRestClient _remoteDataSource;
  AuthenticationRepositoryImpl(this._remoteDataSource);

  @override
  Future<BaseResponse<dynamic>> login(LoginRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => _remoteDataSource.login(data: data.toJson(), cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }

  @override
  Future<BaseResponse<dynamic>> verifyPinCode(VerifyCodeRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => _remoteDataSource.verifyPinCode(data: data.toJson(), cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }

  @override
  Future<BaseResponse<dynamic>> resendVerificationCode(GetVerificationCodeRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => _remoteDataSource.resendVerificationCode(data: data.toJson(), cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }

  @override
  Future<BaseResponse<dynamic>> register(RegisterRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => _remoteDataSource.register(data: data.toJson(), cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }

  @override
  Future<BaseResponse<dynamic>> forgetPassword(GetVerificationCodeRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => _remoteDataSource.forgetPassword(data: data.toJson(), cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }

  @override
  Future<BaseResponse<dynamic>> resetPassword(ResetPasswordRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => _remoteDataSource.resetPassword(data: data.toJson(), cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }

  @override
  Future<BaseResponse<dynamic>> changePassword(ChangePasswordRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => _remoteDataSource.changePassword(data: data.toJson(), cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }
}
