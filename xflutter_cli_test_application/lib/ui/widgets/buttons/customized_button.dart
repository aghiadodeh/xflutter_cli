// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  final Widget child;
  final bool enabled;
  final Function() callback;
  final ButtonStyle? style;
  const CustomizedButton({
    required this.child,
    required this.callback,
    this.enabled = true,
    this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: !enabled ? null : callback,
      style: style ?? Theme.of(context).elevatedButtonTheme.style,
      child: child,
    );
  }
}
