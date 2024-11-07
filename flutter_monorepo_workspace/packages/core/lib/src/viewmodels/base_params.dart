// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:core/src/data/models/ui_models/ui_message/ui_message.dart';
import 'package:core/src/extensions/live_data_extension.dart';

class BaseParams {
  /// display progress widget
  final _loading = false.liveData;
  LiveData<bool> get loading => _loading;

  /// event emitter for display [SnackBar] or [Dialog]
  final _uiMessage = const UiMessage().liveEvent;
  ObservableData<UiMessage> get uiMessage => _uiMessage;

  /// update [_loading] with new [value]
  void setLoading(bool value) {
    _loading.postValue(value);
  }

  /// emit new [UiMessage]
  void emitUiMessage(UiMessage value) {
    _uiMessage.send(value);
  }
}
