// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import './viewmodels/home_viewmodel.dart';
import 'package:xflutter_cli_test_application/ui/widgets/loaders/live_data_loader.dart';
import 'package:xflutter_cli_test_application/ui/widgets/instance/instance_state.dart';
import 'package:xflutter_cli_test_application/ui/widgets/core/base_scaffold.dart';
import 'package:auto_route/auto_route.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'mobile/home_mobile_screen.dart';
import 'tablet/home_tablet_screen.dart';

@RoutePage(name: 'home')
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with InstanceState<HomeScreen, HomeViewModel>, ObserverMixin {
  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          builder: (context, theme) => SafeArea(
            child: ScreenTypeLayout.builder(
              mobile: (context) => HomeMobileScreen(),
              tablet: (context) => HomeTabletScreen(),
            ),
          ),
        ),
        LiveDataFullScreenLoader(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  HomeViewModel registerInstance() => HomeViewModel();
}