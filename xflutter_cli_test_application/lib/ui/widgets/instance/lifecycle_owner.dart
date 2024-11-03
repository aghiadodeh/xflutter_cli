// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:get_it/get_it.dart';
import 'package:xflutter_cli_test_application/data/models/ui_models/ui_message/ui_message.dart';
import 'package:xflutter_cli_test_application/viewmodels/base_viewmodel.dart';
import 'package:xflutter_cli_test_application/utilities/ui/ui.dart';
import 'package:xflutter_cli_test_application/data/models/di/di_scope/di_scope.dart';

/// manage widget life-cycle with your state-holder (viewModel) and observing data,
/// and drop passed scope when widget destroyed.
mixin LifecycleOwner<T extends StatefulWidget, VM extends BaseViewModel> on State<T> implements ObserverMixin {
  late VM viewModel;

  /// [DiScope] that [LifecycleOwner] will take care, register it on [initState] and drop it on [dispose]
  DiScope get diScope;

  /// save the [DiScope] list that registered by this [LifecycleOwner],
  ///
  /// [LifecycleOwner] will save the [diScope] and all its dependencies when register it,
  /// after check if this scope not registered before
  ///
  /// this will help you when you have multiple screen need for this scope, and you don't know which screen registered the scope,
  /// here you can know which scopes registered by this [LifecycleOwner]
  List<DiScope> diScopes = [];

  /// callback fired immediately after the widget is allocated in memory.
  void onInitState() {}

  /// callback fired 1 frame after onInit(). It is the perfect place to enter
  /// navigation, events, like snackBar, dialogs, or a new route
  void onReady() {}

  /// callback fired when widget destroyed.
  void onDispose() {}

  /// observe live data variables changes with [observer]
  void observeChanges(ObserverMixin observer) {}

  @override
  void initState() {
    registerScope(diScope);
    viewModel = GetIt.instance.get<VM>();
    onInitState();
    viewModel.onInit();
    super.initState();
    executeAfterBuild();
  }

  /// creates a new registration [scope], with all dependencies
  void registerScope(DiScope scope) {
    // register scope dependencies
    for (final dependency in scope.dependencies) {
      registerScope(dependency);
    }

    // check if scope has registered before
    if (!GetIt.instance.hasScope(scope.name)) {
      // register scope
      scope.factory();

      // add to scopes
      diScopes.add(scope);
    }
  }

  @override
  FutureOr<void> registerObservers() {
    observeChanges(this);
    viewModel.baseParams.uiMessage.observe(this, _handleUiMessage);
  }

  @override
  void dispose() {
    onDispose();
    viewModel.onDispose();
    dropScope(diScope);
    doUnregister();
    super.dispose();
  }

  /// clears all registered factories and singletons in the provided [scope]
  Future<void> dropScope(DiScope scope) async {
    // check if scope is already registered
    if (GetIt.instance.hasScope(scope.name)) {
      if (scope.disposeOwner) {
        // check if scope registered in this lifeCycle Owner
        final index = diScopes.indexWhere((e) => e.name == scope.name);
        if (index != -1) {
          // drop all scope dependencies
          await GetIt.instance.dropScope(scope.name);
        }
      } else if (scope.dispose) {
        // drop all scope dependencies
        await GetIt.instance.dropScope(scope.name);
      }
    }

    // clear scope dependencies
    for (final dependency in scope.dependencies) {
      await dropScope(dependency);
    }
  }

  /// handle uiMessage
  void _handleUiMessage(UiMessage uiMessage) {
    final message = uiMessage.message;
    if (message != null) {
      showSnackBar(
        context: context,
        message: message,
        backgroundColor: uiMessage.color,
      );
    }
  }

  void executeAfterBuild() {
    runAfterBuild(() {
      doRegister();
      onReady();
      viewModel.onReady();
    });
  }
}