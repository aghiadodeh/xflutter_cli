// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:xflutter_cli_modules_application/common/models/models.dart';
import 'package:xflutter_cli_modules_application/common/viewmodels/base_viewmodel.dart';
import 'package:xflutter_cli_modules_application/core/utilities/ui/ui.dart';
import 'package:xflutter_cli_modules_application/core/utilities/di/di.dart';
import 'instance_builder.dart';
import 'instance_use.dart';

/// Create a global instance when widget state initialized,
/// and remove the instance when widget destroyed.
///
/// this make you can access the same instance from your widget children without pass any variables.
///
/// just wrap your children widgets in [InstanceBuilder] for [StatelessWidget] or in [InstanceUse] for [StatefulWidget].
mixin InstanceState<T extends StatefulWidget, VM extends BaseViewModel> on State<T> implements ObserverMixin {
  late VM viewModel;

  String? instanceName;

  /// new instance from you class.
  VM registerInstance();

  /// callback when widget initialized.
  void onInitState() {}

  /// Called 1 frame after onInit(). It is the perfect place to enter
  /// navigation, events, like snackBar, dialogs, or a new route
  void onReady() {}

  /// callback when widget destroyed.
  void onDispose() {}

  /// observe on live data variables
  void observeLiveData(ObserverMixin observer) {}

  @override
  void initState() {
    viewModel = registerInstance();
    putInstance<VM>(viewModel, instanceName: instanceName);
    onInitState();
    viewModel.onInit();
    super.initState();
    executeAfterBuild();
  }

  @override
  FutureOr<void> registerObservers() {
    observeLiveData(this);
    viewModel.baseParams.uiMessage.observe(this, _handleUiMessage);
  }

  @override
  void dispose() {
    onDispose();
    viewModel.onDispose();
    doUnregister();
    destroyInstance<VM>(instanceName: instanceName);
    super.dispose();
  }

  /// handle uiMessage
  void _handleUiMessage(UiMessage uiMessage) {
    if (uiMessage.message != null) {
      Color? backgroundColor;
      switch (uiMessage.state) {
        case UiMessageState.success:
          backgroundColor = Colors.green;
          break;
        case UiMessageState.error:
          backgroundColor = Colors.red;
          break;
        default:
          break;
      }
      showSnackBar(
        context: context,
        message: uiMessage.message!,
        backgroundColor: backgroundColor,
      );
      uiMessage.message = null;
    }
  }

  void executeAfterBuild() {
    runAfterBuild(() {
      doRegister();
      onReady();
      viewModel.onReady();
    });
  }

  /// callback which wrap your widgets
  Widget screen(BuildContext context, VM viewModel);

  @override
  Widget build(BuildContext context) {
    return screen(context, viewModel);
  }
}
