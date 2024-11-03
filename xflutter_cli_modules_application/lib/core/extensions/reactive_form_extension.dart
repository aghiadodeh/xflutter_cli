// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';

extension FormGroupUtils on FormGroup {
  T? getControlValue<T>(String formControlName) {
    final value = controls[formControlName]?.value;
    if (value != null) return value as T;
    return null;
  }
}