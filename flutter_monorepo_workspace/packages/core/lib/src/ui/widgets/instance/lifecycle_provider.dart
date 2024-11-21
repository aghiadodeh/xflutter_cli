// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import '../../../data/models/di/di_scope/di_scope.dart';
import '../../../viewmodels/base_viewmodel.dart';
import 'lifecycle_owner.dart';

/// manage widget life-cycle with your state-holder (viewModel) and observing data,
/// and drop passed scope when widget destroyed.
class LifecycleProvider<T extends BaseViewModel> extends StatefulWidget {
  /// [DiScope] that [LifecycleOwner] will take care, register it on [initState] and drop it on [dispose]
  final DiScope diScope;

  /// [builder] is Your UI Tree after registering [diScope],
  /// use your [T] registered [instance] inside the tree
  final Widget Function(BuildContext context, T instance) builder;

  /// [onInit] is callback fired immediately after the widget is allocated in memory.
  final Function(BuildContext context, T instance)? onInit;

  /// [onReady] is callback fired 1 frame after onInit(). It is the perfect place to enter
  /// navigation, events, like snackBar, dialogs, or a new route
  final Function(BuildContext context, T instance)? onReady;

  /// [onDispose] is callback fired when widget destroyed.
  final Function(BuildContext context, T instance)? onDispose;

  const LifecycleProvider({
    required this.diScope,
    required this.builder,
    this.onInit,
    this.onReady,
    this.onDispose,
    super.key,
  });

  @override
  State<LifecycleProvider<T>> createState() => LifecycleProviderState();
}

class LifecycleProviderState<T extends BaseViewModel> extends State<LifecycleProvider<T>> with LifecycleOwner<LifecycleProvider<T>, T>, ObserverMixin {
  @override
  void onInitState() {
    super.onInitState();
    if (widget.onInit != null) {
      widget.onInit!(context, viewModel);
    }
  }

  @override
  void onReady() {
    super.onReady();
    if (widget.onReady != null) {
      widget.onReady!(context, viewModel);
    }
  }

  @override
  void onDispose() {
    if (widget.onDispose != null) {
      widget.onDispose!(context, viewModel);
    }
    super.onDispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, viewModel);
  }

  @override
  DiScope get diScope => widget.diScope;
}
