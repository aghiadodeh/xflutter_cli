// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import '../widgets/login_form.dart';
import 'package:flutter/material.dart';
import '../viewmodels/login_viewmodel.dart';
import 'package:core/core.dart';

class LoginTabletScreen extends StatelessWidget {
  const LoginTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<LoginViewModel>(
      builder: (viewModel) => const BaseScrollView(
        child: LoginForm(),
      ).padding(adaptivePadding),
    );
  }
}