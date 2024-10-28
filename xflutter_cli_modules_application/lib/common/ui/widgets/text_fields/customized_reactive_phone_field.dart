// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';
import 'package:xflutter_cli_modules_application/common/ui/resources/themes/theme.dart';

class CustomizedReactivePhoneField extends StatelessWidget {
  final String formControlName;
  final String? labelText;
  final TextInputAction textInputAction;
  final TextStyle? textStyle;
  final bool editable;
  final Widget? prefix;
  final Widget? suffix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final Function()? onSubmitted;
  final Map<String, String Function(Object)>? validationMessages;
  const CustomizedReactivePhoneField({
    required this.formControlName,
    this.labelText,
    this.textStyle,
    this.textInputAction = TextInputAction.next,
    this.editable = true,
    this.prefix,
    this.suffix,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
    this.onSubmitted,
    this.validationMessages,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ReactivePhoneFormField<PhoneNumber>(
      formControlName: formControlName,
      textInputAction: textInputAction,
      onSubmitted: onSubmitted,
      style: textStyle ?? textFieldStyle,
      keyboardAppearance: Brightness.dark,
      textAlignVertical: TextAlignVertical.center,
      autocorrect: false,
      autofocus: false,
      isCountryButtonPersistent: true,
      validationMessages: validationMessages ??
          {
            'phone.required': (error) => '$labelText is required',
            'phone.validMobile': (error) => '$labelText is not valid',
          },
      countrySelectorNavigator: const CountrySelectorNavigator.draggableBottomSheet(
        initialChildSize: .8,
        maxChildSize: .95,
        minChildSize: .6,
        addSeparator: true,
        titleStyle: smallTextStyle,
        subtitleStyle: verySmallTextStyle,
        searchBoxTextStyle: normalTextStyle,
      ),
      decoration: textInputDecoration(theme).copyWith(
        labelText: labelText,
        prefix: prefix,
        prefixIcon: prefixIcon,
        prefixIconConstraints: prefixIconConstraints,
        suffix: suffix,
        suffixIcon: suffixIcon,
        suffixIconConstraints: suffixIconConstraints,
        labelStyle: smallTextStyle,
        errorStyle: verySmallTextStyle,
      ),
    );
  }
}
