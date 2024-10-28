// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BaseScaffold extends StatefulWidget {
  final Widget? drawer;
  final PreferredSizeWidget? Function(BuildContext context, ThemeData theme)? appBar;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final bool? resizeToAvoidBottomInset;
  final Widget Function(BuildContext context, ThemeData theme) builder;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final bool extendBodyBehindAppBar;

  const BaseScaffold({
    required this.builder,
    this.appBar,
    this.drawer,
    this.floatingActionButton,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.resizeToAvoidBottomInset,
    this.floatingActionButtonLocation,
    this.extendBodyBehindAppBar = false,
    super.key,
  });

  @override
  State<BaseScaffold> createState() => BaseScaffoldState();
}

class BaseScaffoldState extends State<BaseScaffold> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final systemUiOverlayStyle = theme.brightness == Brightness.dark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Platform.isIOS ? systemUiOverlayStyle : systemUiOverlayStyle.copyWith(statusBarColor: Colors.transparent),
      child: Scaffold(
        key: scaffoldKey,
        extendBody: true,
        extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
        backgroundColor: widget.backgroundColor ?? theme.scaffoldBackgroundColor,
        drawer: widget.drawer,
        body: widget.builder(context, theme),
        appBar: widget.appBar?.call(context, theme),
        floatingActionButton: widget.floatingActionButton,
        bottomNavigationBar: widget.bottomNavigationBar,
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        floatingActionButtonLocation: widget.floatingActionButtonLocation,
      ),
    );
  }
}
