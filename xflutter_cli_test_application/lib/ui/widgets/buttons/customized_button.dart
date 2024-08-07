// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import 'package:xflutter_cli_test_application/ui/resources/themes/theme.dart';

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
      onPressed: () {
        if (!enabled) return;
        callback();
      },
      style: (style ?? elevatedButtonTheme(darkMode: Theme.of(context).brightness == Brightness.dark).style)?.copyWith(
        backgroundColor: WidgetStateProperty.all(enabled ? Theme.of(context).primaryColor : Colors.grey.shade400),
      ),
      child: child,
    );
  }
}
