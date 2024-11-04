// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:injectable/injectable.dart';
import 'package:xflutter_cli_modules_application/common/data/models/responses/base_response/base_response.dart';
part 'authentication_rest_client.g.dart';

@LazySingleton(scope: 'authentication')
@RestApi()
abstract class AuthenticationRestClient {
  @factoryMethod
  factory AuthenticationRestClient(Dio dio) = _AuthenticationRestClient;

  @POST('/auth/login')
  Future<BaseResponse<dynamic>> login({
    @Body() required Map<String, dynamic> data,
    @CancelRequest() CancelToken? cancelToken,
  });

  @POST('/auth/verify')
  Future<BaseResponse<dynamic>> verifyPinCode({
    @Body() required Map<String, dynamic> data,
    @CancelRequest() CancelToken? cancelToken,
  });

  @POST('/auth/resend-code')
  Future<BaseResponse<dynamic>> resendVerificationCode({
    @Body() required Map<String, dynamic> data,
    @CancelRequest() CancelToken? cancelToken,
  });
  @POST('/auth/register')
  Future<BaseResponse<dynamic>> register({
    @Body() required Map<String, dynamic> data,
    @CancelRequest() CancelToken? cancelToken,
  });

  @POST('/auth/forget-password')
  Future<BaseResponse<dynamic>> forgetPassword({
    @Body() required Map<String, dynamic> data,
    @CancelRequest() CancelToken? cancelToken,
  });

  @POST('/auth/reset-password')
  Future<BaseResponse<dynamic>> resetPassword({
    @Body() required Map<String, dynamic> data,
    @CancelRequest() CancelToken? cancelToken,
  });

  @POST('/auth/change-password')
  Future<BaseResponse<dynamic>> changePassword({
    @Body() required Map<String, dynamic> data,
    @CancelRequest() CancelToken? cancelToken,
  });
}