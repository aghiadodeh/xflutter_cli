// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'dart:async';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:xflutter_cli_modules_application/common/models/models.dart';
import 'package:xflutter_cli_modules_application/core/utilities/http/connectivity.dart';
import 'package:xflutter_cli_modules_application/core/extensions/nullable_extension.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/result/result_builder.dart';
import 'base_params.dart';

abstract class BaseViewModel extends LifeCycle {
  late final baseParams = BaseParams();

  /// call http request, check if user connecting to internet
  ///
  /// [loading] is optional [MutableLiveData] params which control your ui-loader (ProgressBar) while request in-progress.
  /// [result] is optional [MutableLiveData].[Result] params which control your [ResultBuilder].
  /// [request] is a [Future] return type of [BaseResponse] called inside [callHttpRequest].
  /// [callback] is a [Function] called after [request] fetched,
  /// [callback] return nullable [X] result if [request] success else return `null`
  Future<void> callHttpRequest<X>(
    Future<BaseResponse<X>> Function() request, {
    MutableLiveData<Result<X>>? result,
    MutableLiveData<bool>? loading,
    Function(X? result, bool success)? callback,
  }) async {
    // check if connecting to internet
    bool isOnline = await isConnectingToInternet();
    if (isOnline) {
      // notify ui to show loader
      loading?.postValue(true);
      if (result?.value is ResultIdle<X>) {
        result?.postValue(Result<X>.loading());
      }

      // call http request
      final response = await request.call();
      if (response.isSuccess) {
        // success response
        response.data?.let((it) => result?.postValue(Result<X>.data(it)));
        callback?.call(response.data, true);
      } else {
        // error response
        result?.postValue(Result<X>.error(response.message));
        baseParams.uiMessage.postValue(
          UiMessage(
            message: response.message,
            state: UiMessageState.error,
          ),
        );
        callback?.call(null, false);
      }
      loading?.postValue(false);
    } else {
      // notify error message
      result?.postValue(Result<X>.error("check_internet_connection"));
      baseParams.uiMessage.postValue(
        UiMessage(
          message: "check_internet_connection",
          state: UiMessageState.error,
        ),
      );
      callback?.call(null, false);
    }
  }

  /// call http request with stream, this function used if your repository fetch data from multiple data-source (local and remote)
  ///
  /// [loading] is optional [Function] params which control your ui-loader (ProgressBar) while request in-progress.
  /// [result] is optional [MutableLiveData].[Result] params which control your [ResultBuilder].
  /// [request] is a [Future] return type of [BaseResponse] called inside [callStreamRequest].
  /// [callback] is a [Function] called after [request] fetched,
  /// [callback] return nullable [X] result if [request] success else return `null`
  Future<void> callStreamRequest<X>(
    Stream<BaseResponse<X>> Function() request, {
    MutableLiveData<Result<X>>? result,
    Function()? loading,
    Function(X? result, bool success)? callback,
  }) async {
    late StreamSubscription<BaseResponse<X>> subscription;

    // notify ui to show loader
    loading?.call();
    if (result?.value is ResultIdle<X>) {
      result?.postValue(Result<X>.loading());
    }

    // call http request
    subscription = request.call().listen((response) {
      if (response.data == null) {
        if (response.success == false) {
          callback?.call(null, false);
        }
        subscription.cancel();
      } else if (response.success == true) {
        // success response
        response.data?.let((it) => result?.postValue(Result<X>.data(it)));
        callback?.call(response.data, true);
      } else {
        // error response
        result?.postValue(Result<X>.error(response.message));
        baseParams.uiMessage.postValue(
          UiMessage(message: response.message, state: UiMessageState.error),
        );
        callback?.call(null, false);
      }
    });
  }
}

/// controlled from you custom widget or [InstanceState]
abstract class LifeCycle {
  /// Called immediately after the widget is allocated in memory.
  void onInit() {}

  /// Called 1 frame after onInit(). It is the perfect place to enter
  /// navigation, events, like snackBar, dialogs, or a new route
  void onReady() {}

  /// Called immediately before the widget is disposed
  void onDispose() {}
}
