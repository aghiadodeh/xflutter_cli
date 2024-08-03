// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:xflutter_cli_modules_application/common/models/models.dart';
import 'package:xflutter_cli_modules_application/core/utilities/http/connectivity.dart';

abstract class BaseRepository {
  final List<CancelToken> cancelTokens = [];

  /// call request only if device connected to internet, else return null data response
  Future<BaseResponse<T>> getResponse<T>(
    Future<BaseResponse<T>> Function() request, {
    CancelToken? cancelToken,
  }) async {
    if (await isConnectingToInternet()) {
      if (cancelToken != null) cancelTokens.add(cancelToken);
      final response = await request().onError((error, stackTrace) => catchError<T>(error));
      if (cancelToken != null) cancelTokens.remove(cancelToken);
      if (response.statusCode == 401) {
        // TODO: handle Unauthorized Event
      }
      return response;
    } else {
      return BaseResponse<T>(
        success: false,
        message: "check_internet_connection",
        data: null,
      );
    }
  }

  /// handle request exceptions.
  Future<BaseResponse<T>> catchError<T>(e) async {
    Map<String, dynamic>? response;
    String? message;
    bool success = true;
    if (kDebugMode) print(e);
    try {
      if (e is DioException && e.type != DioExceptionType.cancel) {
        success = false;
        if (e.response != null && e.response!.data is Map) {
          response = e.response!.data as Map<String, dynamic>;
        }
        if (response != null) message = response['message'];
        message ??= e.message;
      } else {
        message = e.toString();
      }
    } catch (error) {
      if (kDebugMode) print(error);
    }
    return BaseResponse<T>(
      message: message,
      data: null,
      success: success,
    );
  }

  void dispose() {
    cancelPendingRequests();
  }

  /// cancel all pending requests
  void cancelPendingRequests() {
    for (var cancelToken in cancelTokens) {
      cancelToken.cancel();
    }
    cancelTokens.clear();
  }
}
