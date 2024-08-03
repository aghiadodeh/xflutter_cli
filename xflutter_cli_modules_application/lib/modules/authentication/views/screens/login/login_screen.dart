// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:xflutter_cli_modules_application/core/extensions/reactive_phone_extension.dart';
import 'package:xflutter_cli_modules_application/common/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import './viewmodels/login_viewmodel.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/loaders/live_data_loader.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/instance/instance_state.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/core/base_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'mobile/login_mobile_screen.dart';
import 'tablet/login_tablet_screen.dart';

@RoutePage(name: 'login')
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with InstanceState<LoginScreen, LoginViewModel>, ObserverMixin {
  void observeEvents() {
    viewModel.eventEmitter.observe((value) {
      if (value != null) {
        final phone = viewModel.params.loginForm.getPhoneNumber('phone')?.international ?? '';
        appRouter.push(VerifyPinCode(phone: phone));
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
          builder: (context, theme) => SafeArea(
            child: ScreenTypeLayout.builder(
              mobile: (context) => LoginMobileScreen(),
              tablet: (context) => LoginTabletScreen(),
            ),
          ),
        ),
        LiveDataFullScreenLoader(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  LoginViewModel registerInstance() => LoginViewModel();
}
