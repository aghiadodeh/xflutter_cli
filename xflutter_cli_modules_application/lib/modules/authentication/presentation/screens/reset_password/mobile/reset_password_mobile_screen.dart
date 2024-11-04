// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import '../widgets/reset_password_form.dart';
import 'package:xflutter_cli_modules_application/common/ui/resources/themes/theme.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/core/base_scrollview.dart';
import 'package:flutter/material.dart';
import '../viewmodels/reset_password_viewmodel.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/instance/instance_builder.dart';

class ResetPasswordMobileScreen extends StatelessWidget {
  const ResetPasswordMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<ResetPasswordViewModel>(
      builder: (ResetPasswordViewModel viewModel) {
        return BaseScrollView(
          padding: adaptivePadding,
          child: const ResetPasswordForm(),
        );
      },
    );
  }
}