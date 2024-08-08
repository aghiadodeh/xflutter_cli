// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import '../widgets/login_form.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/core/base_scrollview.dart';
import 'package:xflutter_cli_modules_application/common/ui/resources/themes/theme.dart';
import 'package:xflutter_cli_modules_application/core/extensions/view_extension.dart';
import 'package:flutter/material.dart';
import '../viewmodels/login_viewmodel.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/instance/instance_builder.dart';

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