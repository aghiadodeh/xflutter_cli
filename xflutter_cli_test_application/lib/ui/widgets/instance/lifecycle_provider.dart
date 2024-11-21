import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:xflutter_cli_test_application/data/models/di/di_scope/di_scope.dart';
import 'lifecycle_owner.dart';
import '../../../viewmodels/base_viewmodel.dart';

class LifecycleProvider<T extends BaseViewModel> extends StatefulWidget {
  final DiScope diScope;
  final Function(BuildContext context, T instance) builder;
  final Function(BuildContext context, T instance)? onInit;
  final Function(BuildContext context, T instance)? onReady;
  final Function(BuildContext context, T instance)? onDispose;
  final Function(ObserverMixin observer, T instance)? listenChanges;
  const LifecycleProvider({
    required this.diScope,
    required this.builder,
    this.onInit,
    this.onReady,
    this.onDispose,
    this.listenChanges,
    super.key,
  });

  @override
  State<LifecycleProvider<T>> createState() => _LifecycleProviderState();
}

class _LifecycleProviderState<T extends BaseViewModel> extends State<LifecycleProvider<T>> with LifecycleOwner<LifecycleProvider<T>, T>, ObserverMixin {
  @override
  void observeChanges(ObserverMixin observer) {
    super.observeChanges(observer);
    if (widget.listenChanges != null) {
      widget.listenChanges!(observer, viewModel);
    }
  }

  @override
  void onInitState() {
    if (widget.onInit != null) widget.onInit!(context, viewModel);
    super.onInitState();
  }

  @override
  void onReady() {
    if (widget.onReady != null) widget.onReady!(context, viewModel);
  }

  @override
  void onDispose() {
    if (widget.onDispose != null) widget.onDispose!(context, viewModel);
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, viewModel);
  }

  @override
  DiScope get diScope => widget.diScope;
}
