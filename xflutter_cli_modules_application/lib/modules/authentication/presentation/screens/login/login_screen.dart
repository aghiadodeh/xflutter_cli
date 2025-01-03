// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import './viewmodels/login_viewmodel.dart';
import 'package:auto_route/auto_route.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'mobile/login_mobile_screen.dart';
import 'tablet/login_tablet_screen.dart';
import 'package:xflutter_cli_modules_application/common/data/models/di/di_scope/di_scope.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/loaders/live_data_loader.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/instance/lifecycle_owner.dart';
import 'package:xflutter_cli_modules_application/core/extensions/di_extension.dart';
import 'package:xflutter_cli_modules_application/common/di/app_injectable.config.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/core/base_scaffold.dart';

@RoutePage(name: 'login')
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with LifecycleOwner<LoginScreen, LoginViewModel>, ObserverMixin {
  @override
  void observeChanges(ObserverMixin observer) {
    viewModel.params.result.observe(observer, (value) {
      if (value != null) {
        // login success, navigate to verify-pin-code screen
        // TODO: navigate to your destination route
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // screen body
        BaseScaffold(
          builder: (context, theme) => SafeArea(
            child: ScreenTypeLayout.builder(
              mobile: (_) => const LoginMobileScreen(),
              tablet: (_) => const LoginTabletScreen(),
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
        name: 'login',
        factory: getIt.initLoginScope,
        dependencies: [
          DiScope(
            name: 'authentication',
            factory: getIt.initAuthenticationScope,
          ),
        ],
      );
}
