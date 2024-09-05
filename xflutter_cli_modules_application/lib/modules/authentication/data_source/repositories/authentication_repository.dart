// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:dio/dio.dart';
import 'dart:async';
import 'package:xflutter_cli_modules_application/common/data_source/repositories/base_repository.dart';
import 'package:xflutter_cli_modules_application/common/models/models.dart';
import 'package:xflutter_cli_modules_application/core/utilities/di/di.dart';
import 'package:xflutter_cli_modules_application/modules/authentication/data_source/remote/authentication_rest_client/authentication_rest_client.dart';

class AuthenticationRepository extends BaseRepository {
  late final restClient = AuthenticationRestClient(findInstance<Dio>());

  Future<BaseResponse<dynamic>> login(LoginRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => restClient.login(data: data.toJson(), cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> verifyPinCode(VerifyCodeRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => restClient.verifyPinCode(data: data.toJson(), cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> resendVerificationCode(GetVerificationCodeRequest data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => restClient.resendVerificationCode(data: data.toJson(), cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }
}
