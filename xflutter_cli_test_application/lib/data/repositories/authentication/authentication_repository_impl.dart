// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'authentication_repository.dart';
import 'package:xflutter_cli_test_application/data/models/responses/base_response/base_response.dart';
import 'package:xflutter_cli_test_application/data/models/requests/login_request/login_request.dart';
import 'package:xflutter_cli_test_application/data/models/requests/verify_code_request/verify_code_request.dart';
import 'package:xflutter_cli_test_application/data/models/requests/get_verification_code_request/get_verification_code_request.dart';
import '../base_repository.dart';
import 'package:xflutter_cli_test_application/data/data_sources/remote/authentication_rest_client/authentication_rest_client.dart';

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
}
