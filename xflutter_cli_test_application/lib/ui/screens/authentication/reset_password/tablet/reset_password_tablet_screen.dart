// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import '../widgets/reset_password_form.dart';
import 'package:xflutter_cli_test_application/ui/widgets/core/base_scrollview.dart';
import 'package:xflutter_cli_test_application/ui/resources/themes/theme.dart';
import 'package:xflutter_cli_test_application/extensions/view_extension.dart';
import 'package:flutter/material.dart';
import '../viewmodels/reset_password_viewmodel.dart';
import 'package:xflutter_cli_test_application/ui/widgets/instance/instance_builder.dart';

class ResetPasswordTabletScreen extends StatelessWidget {
  const ResetPasswordTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<ResetPasswordViewModel>(
      builder: (viewModel) => const BaseScrollView(
        child: ResetPasswordForm(),
      ).padding(adaptivePadding),
    );
  }
}
