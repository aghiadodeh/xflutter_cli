// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:dio/dio.dart';
import 'package:xflutter_cli_modules_application/core/events/event_bus.dart';

class HttpInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final httpHeaders = {
      'Accept': 'application/json',
      // TODO: add authorization token to http-headers
      // 'Authorization': 'Bearer ${await SecureStorage.read(key: "token")}',
    };
    options.headers.addAll(httpHeaders);
    super.onRequest(options, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // handle UNAUTHORIZED error
      eventBus.fire(const UnauthorizedEvent());
    }
    super.onError(err, handler);
  }
}