// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:xflutter_cli_modules_application/common/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import './viewmodels/verify_pin_code_viewmodel.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'mobile/verify_pin_code_mobile_screen.dart';
import 'tablet/verify_pin_code_tablet_screen.dart';
import 'package:xflutter_cli_modules_application/common/data/models/di/di_scope/di_scope.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/loaders/live_data_loader.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/instance/lifecycle_owner.dart';
import 'package:xflutter_cli_modules_application/core/extensions/di_extension.dart';
import 'package:xflutter_cli_modules_application/common/di/app_injectable.config.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/core/base_scaffold.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/core/base_appbar.dart';

@RoutePage(name: 'verifyPinCode')
class VerifyPinCodeScreen extends StatefulWidget {
  final String email;
  final PageRouteInfo? pageRoute;

  const VerifyPinCodeScreen({required this.email, this.pageRoute, super.key});

  @override
  State<VerifyPinCodeScreen> createState() => _VerifyPinCodeScreenState();
}

class _VerifyPinCodeScreenState extends State<VerifyPinCodeScreen>
    with LifecycleOwner<VerifyPinCodeScreen, VerifyPinCodeViewModel>, ObserverMixin {
  @override
  void observeChanges(ObserverMixin observer) {
    viewModel.params.result.observe(observer, (value) async {
      if (value != null) {
        // verification success
        if (widget.pageRoute != null) {
          // clear injected dependencies
          await dropScope(diScope);
          // navigate to destination
          appRouter.replaceAll([widget.pageRoute!]);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // screen body
        BaseScaffold(
          appBar: (context, theme) => BaseAppBar(title: 'verify_pin_code'.tr()),
          builder: (context, theme) => SafeArea(
            child: ScreenTypeLayout.builder(
              mobile: (_) => const VerifyPinCodeMobileScreen(),
              tablet: (_) => const VerifyPinCodeTabletScreen(),
            ),
          ),
        ),

        // full-screen loader
        LiveDataFullScreenLoader(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  void onInitState() {
    viewModel.params.email = widget.email;
    super.onInitState();
  }

  @override
  DiScope get diScope => DiScope(
        name: 'verifyPinCode',
        factory: getIt.initVerifyPinCodeScope,
        dependencies: [],
      );
}
