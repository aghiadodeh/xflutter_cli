import 'package:reactive_forms/reactive_forms.dart'; // Generated By XFlutter Cli.

//
// more info: https://xflutter-cli.com
// declare and manage viewModel-liveData variables.
//
// see: https://pub.dev/packages/flutterx_live_data
//
// more details: https://medium.com/@aghiadodeh/flutter-live-data-tutorial-4c65f1b7ff5e
class ForgetPasswordParams {
  late final forgetPasswordForm = FormGroup({
    'email': FormControl<String>(
      validators: [
        Validators.required,
        Validators.email,
      ],
    ),
  });
}
