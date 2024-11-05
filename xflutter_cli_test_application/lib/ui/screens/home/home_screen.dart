// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import './viewmodels/home_viewmodel.dart';
import 'package:auto_route/auto_route.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'mobile/home_mobile_screen.dart';
import 'tablet/home_tablet_screen.dart';
import 'package:xflutter_cli_test_application/data/models/di/di_scope/di_scope.dart';
import 'package:xflutter_cli_test_application/ui/widgets/loaders/live_data_loader.dart';
import 'package:xflutter_cli_test_application/ui/widgets/instance/lifecycle_owner.dart';
import 'package:xflutter_cli_test_application/extensions/di_extension.dart';
import 'package:xflutter_cli_test_application/di/app_injectable.config.dart';
import 'package:xflutter_cli_test_application/ui/widgets/core/base_scaffold.dart';

@RoutePage(name: 'home')
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with LifecycleOwner<HomeScreen, HomeViewModel>, ObserverMixin {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // screen body
        BaseScaffold(
          builder: (context, theme) => SafeArea(
            child: ScreenTypeLayout.builder(
              mobile: (_) => const HomeMobileScreen(),
              tablet: (_) => const HomeTabletScreen(),
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
        name: 'home',
        factory: getIt.initHomeScope,
        dependencies: [],
      );
}
