// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:dio/dio.dart';
import 'package:core/src/environment/environment.dart';
import 'package:core/src/events/event_bus.dart';

class HttpInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final httpHeaders = {'Accept': 'application/json'};
    options.headers.addAll(httpHeaders);
    options.connectTimeout = const Duration(seconds: 60);
    options.receiveTimeout = const Duration(seconds: 60);
    options.sendTimeout = const Duration(seconds: 60);
    options.baseUrl = Environment.apiUrl;
    super.onRequest(options, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      eventBus.fire(const UnauthorizedEvent());
    }
    super.onError(err, handler);
  }
}
