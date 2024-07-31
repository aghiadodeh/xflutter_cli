// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:dio/dio.dart';
import 'dart:async';
import 'package:core/core.dart';
import 'package:customer_app/models/models.dart';
import 'package:customer_app/network/rest_clients/authentication_rest_client/authentication_rest_client.dart';

class AuthRepository extends BaseRepository {
  late final restClient = AuthRestClient(findInstance<Dio>());

  Future<BaseResponse<dynamic>> login(LoginRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => restClient.login(
        data: data.toJson(),
        cancelToken: cancelToken,
      ),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> verifyPinCode(VerifyCodeRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => restClient.verifyPinCode(
        data: data.toJson(),
        cancelToken: cancelToken,
      ),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> resendVerificationCode(GetVerificationCodeRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => restClient.resendVerificationCode(
        data: data.toJson(),
        cancelToken: cancelToken,
      ),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> register(RegisterRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => restClient.register(
        data: data.toJson(),
        cancelToken: cancelToken,
      ),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> forgetPassword(GetVerificationCodeRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => restClient.forgetPassword(
        data: data.toJson(),
        cancelToken: cancelToken,
      ),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> resetPassword(ResetPasswordRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => restClient.resetPassword(
        data: data.toJson(),
        cancelToken: cancelToken,
      ),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> changePassword(ChangePasswordRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => restClient.changePassword(
        data: data.toJson(),
        cancelToken: cancelToken,
      ),
      cancelToken: cancelToken,
    );
  }
}
