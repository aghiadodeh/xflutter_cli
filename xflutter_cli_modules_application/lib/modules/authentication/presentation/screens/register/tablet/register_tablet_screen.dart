// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import '../widgets/register_form.dart';
import 'package:xflutter_cli_modules_application/common/ui/resources/themes/theme.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/core/base_scrollview.dart';
import 'package:flutter/material.dart';
import '../viewmodels/register_viewmodel.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/instance/instance_builder.dart';

class RegisterTabletScreen extends StatelessWidget {
  const RegisterTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<RegisterViewModel>(
      builder: (RegisterViewModel viewModel) {
        return BaseScrollView(
          padding: adaptivePadding,
          child: const RegisterForm(),
        );
      },
    );
  }
}