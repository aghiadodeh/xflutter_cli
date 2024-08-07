// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import '../widgets/change_password_form.dart';
import 'package:flutter/material.dart';
import '../viewmodels/change_password_viewmodel.dart';
import 'package:core/core.dart';

class ChangePasswordMobileScreen extends StatelessWidget {
  const ChangePasswordMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<ChangePasswordViewModel>(
      builder: (viewModel) => const BaseScrollView(
        child: ChangePasswordForm(),
      ).padding(adaptivePadding),
    );
  }
}
