import 'package:reactive_forms/reactive_forms.dart'; // Generated By XFlutter Cli.

//
// more info: https://xflutter-cli.com
// declare and manage viewModel-liveData variables.
//
// see: https://pub.dev/packages/flutterx_live_data
//
// more details: https://medium.com/@aghiadodeh/flutter-live-data-tutorial-4c65f1b7ff5e
class AddressesParams {
  late final addressForm = FormGroup({
    'title': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'description': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'city': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'street': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
  });

  late final addressesForm = FormGroup({
    'title': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'description': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'city': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'street': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
  });
}
