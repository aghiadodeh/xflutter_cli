// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:reactive_forms/reactive_forms.dart';

/// check if two controls have the same value or not
class MatchingValidator extends Validator<dynamic> {
  final String controlName;
  final String matchingControlName;

  const MatchingValidator({
    required this.controlName,
    required this.matchingControlName,
  }) : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    final form = control as FormGroup;

    final formControl = form.control(controlName);
    final matchingFormControl = form.control(matchingControlName);

    if (formControl.value != matchingFormControl.value) {
      matchingFormControl.setErrors({'mustMatch': true});

      // force messages to show up as soon as possible
      // matchingFormControl.markAsTouched();
    } else {
      matchingFormControl.removeError('mustMatch');
    }

    return null;
  }
}