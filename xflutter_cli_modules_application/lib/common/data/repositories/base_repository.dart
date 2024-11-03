// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/foundation.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:xflutter_cli_modules_application/core/events/event_bus.dart';
import '../models/responses/base_response/base_response.dart';
import 'package:xflutter_cli_modules_application/core/utilities/network/connectivity.dart';

abstract class BaseRepository {
  final List<CancelToken> cancelTokens = [];
  bool get isConnectingToInternet => GetIt.instance<AppConnectivity>().isConnected.value;

  /// call request only if device connected to internet, else return null data response
  Future<BaseResponse<T>> getResponse<T>(
    Future<BaseResponse<T>> Function() request, {
    CancelToken? cancelToken,
  }) async {
    if (isConnectingToInternet) {
      if (cancelToken != null) cancelTokens.add(cancelToken);
      final response = await request().onError((error, stackTrace) => catchError<T>(error));
      if (cancelToken != null) cancelTokens.remove(cancelToken);
      if (response.statusCode == 401) {
        eventBus.fire(const UnauthorizedEvent());
      }
      return response;
    } else {
      return BaseResponse<T>(
        success: false,
        message: 'check_internet_connection'.tr(),
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