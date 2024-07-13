/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import './viewmodels/register_viewmodel.dart';
import 'package:xflutter_cli_test_application/ui/widgets/loaders/live_data_loader.dart';
import 'package:xflutter_cli_test_application/ui/widgets/instance/instance_state.dart';
import 'package:xflutter_cli_test_application/ui/widgets/core/base_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'mobile/register_mobile_screen.dart';

@RoutePage(name: 'register')
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with InstanceState<RegisterScreen, RegisterViewModel>, ObserverMixin {
  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => SafeArea(
            child: ScreenTypeLayout.builder(
              mobile: (context) => const RegisterMobileScreen(),
            ),
          ),
        ),
        LiveDataFullScreenLoader(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  RegisterViewModel registerInstance() => RegisterViewModel();
}
