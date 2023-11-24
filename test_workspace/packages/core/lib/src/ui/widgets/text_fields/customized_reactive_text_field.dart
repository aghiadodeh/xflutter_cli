/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:core/src/ui/resources/themes/theme.dart';

class CustomizedReactiveFormField extends StatelessWidget {
  final String formControlName;
  final String? labelText;
  final TextInputAction textInputAction;
  final TextInputType? keyboardType;
  final TextAlign textAlign;
  final TextStyle? textStyle;
  final bool editable;
  final bool obscureText;
  final int maxLines;
  final int minLines;
  final Widget? prefix;
  final Widget? suffix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final TextCapitalization? textCapitalization;
  final Function(FormControl<Object?> control)? onSubmitted;
  final Map<String, String Function(Object)>? validationMessages;
  const CustomizedReactiveFormField({
    required this.formControlName,
    this.labelText,
    this.textAlign = TextAlign.start,
    this.textStyle,
    this.textInputAction = TextInputAction.next,
    this.keyboardType,
    this.editable = true,
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.prefix,
    this.suffix,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
    this.textCapitalization,
    this.onSubmitted,
    this.validationMessages,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ReactiveTextField(
      formControlName: formControlName,
      textInputAction: textInputAction,
      onSubmitted: onSubmitted,
      style: textStyle ?? textFieldStyle(),
      keyboardAppearance: Brightness.dark,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      textAlign: textAlign,
      keyboardType: keyboardType,
      obscureText: obscureText,
      autocorrect: false,
      maxLines: maxLines,
      minLines: minLines,
      autofocus: false,
      validationMessages: validationMessages,
      decoration: textInputDecoration(theme).copyWith(
        labelText: labelText,
        prefix: prefix,
        prefixIcon: prefixIcon,
        prefixIconConstraints: prefixIconConstraints,
        suffix: suffix,
        suffixIcon: suffixIcon,
        suffixIconConstraints: suffixIconConstraints,
      ),
    );
  }
}