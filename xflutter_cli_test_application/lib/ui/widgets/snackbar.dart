// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';

void showSnackBar({
  required BuildContext context,
  required String message,
  Function()? callback,
  TextStyle? textStyle,
  String? action,
  Color? backgroundColor,
}) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(message, style: textStyle ?? const TextStyle(color: Colors.white)),
        backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.onSurface,
        action: SnackBarAction(
          label: action ?? "Ok",
          textColor: Colors.white,
          onPressed: () {
            callback?.call();
          },
        ),
      ),
    );
}
