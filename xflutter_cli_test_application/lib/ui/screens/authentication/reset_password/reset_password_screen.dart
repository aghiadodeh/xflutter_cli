// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:xflutter_cli_test_application/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import './viewmodels/reset_password_viewmodel.dart';
import 'package:xflutter_cli_test_application/ui/widgets/loaders/live_data_loader.dart';
import 'package:xflutter_cli_test_application/ui/widgets/instance/instance_state.dart';
import 'package:xflutter_cli_test_application/ui/widgets/core/base_scaffold.dart';
import 'package:xflutter_cli_test_application/ui/widgets/core/base_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'mobile/reset_password_mobile_screen.dart';
import 'tablet/reset_password_tablet_screen.dart';

@RoutePage(name: 'resetPassword')
class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen>
    with InstanceState<ResetPasswordScreen, ResetPasswordViewModel>, ObserverMixin {
  void observeEvents() {
    viewModel.eventEmitter.observe((value) {
      if (value != null) {
        // reset password success
        appRouter.replaceAll([const Login()]);
      }
    });
  }

  @override
  void onInitState() {
    super.onInitState();
    observeEvents();
  }

  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          appBar: (context, theme) => BaseAppBar(title: 'reset_password'.tr()),
          builder: (context, theme) => SafeArea(
            child: ScreenTypeLayout.builder(
              mobile: (context) => const ResetPasswordMobileScreen(),
              tablet: (context) => const ResetPasswordTabletScreen(),
            ),
          ),
        ),
        LiveDataFullScreenLoader(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  ResetPasswordViewModel registerInstance() => ResetPasswordViewModel();
}
