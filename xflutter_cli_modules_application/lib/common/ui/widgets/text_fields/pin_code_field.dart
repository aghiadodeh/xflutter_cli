// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinCodeField extends StatelessWidget {
  final int length;
  final void Function(String) onChanged;
  const PinCodeField({this.length = 4, required this.onChanged, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    BoxDecoration pinPutDecoration = BoxDecoration(
      border: Border.all(color: Colors.grey, width: 0.8),
      borderRadius: BorderRadius.circular(12),
      color: Colors.transparent,
    );
    PinTheme pinTheme = PinTheme(
      decoration: pinPutDecoration,
      height: 52,
      width: 52,
      textStyle: const TextStyle(fontSize: 18),
    );
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        length: length,
        defaultPinTheme: pinTheme,
        focusedPinTheme: pinTheme.copyWith(
          decoration: pinPutDecoration.copyWith(
            border: Border.all(color: theme.primaryColor, width: 2),
          ),
        ),
        closeKeyboardWhenCompleted: true,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        onChanged: onChanged,
        keyboardAppearance: Brightness.dark,
      ),
    );
  }
}
