// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:xflutter_cli_modules_application/common/router/app_router.dart';
import 'package:xflutter_cli_modules_application/core/extensions/reactive_form_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import './viewmodels/forget_password_viewmodel.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'mobile/forget_password_mobile_screen.dart';
import 'tablet/forget_password_tablet_screen.dart';
import 'package:xflutter_cli_modules_application/common/data/models/di/di_scope/di_scope.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/loaders/live_data_loader.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/instance/lifecycle_owner.dart';
import 'package:xflutter_cli_modules_application/core/extensions/di_extension.dart';
import 'package:xflutter_cli_modules_application/common/di/app_injectable.config.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/core/base_scaffold.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/core/base_appbar.dart';

@RoutePage(name: 'forgetPassword')
class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen>
    with LifecycleOwner<ForgetPasswordScreen, ForgetPasswordViewModel>, ObserverMixin {
  @override
  void observeChanges(ObserverMixin observer) {
    viewModel.params.result.observe(observer, (value) {
      if (value != null) {
        // navigate to verify-pin-code screen
        final email = viewModel.params.forgetPasswordForm.getControlValue<String>('email');
        appRouter.push(VerifyPinCode(email: email ?? '', pageRoute: const ResetPassword()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // screen body
        BaseScaffold(
          appBar: (context, theme) => BaseAppBar(title: 'forget_password'.tr()),
          builder: (context, theme) => SafeArea(
            child: ScreenTypeLayout.builder(
              mobile: (_) => const ForgetPasswordMobileScreen(),
              tablet: (_) => const ForgetPasswordTabletScreen(),
            ),
          ),
        ),

        // full-screen loader
        LiveDataFullScreenLoader(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  DiScope get diScope => DiScope(
        name: 'forgetPassword',
        factory: getIt.initForgetPasswordScope,
        dependencies: [],
      );
}