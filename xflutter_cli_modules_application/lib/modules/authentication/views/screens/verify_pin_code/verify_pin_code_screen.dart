// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:xflutter_cli_modules_application/common/ui/shared/verify_pin_code_widget.dart';
import 'package:xflutter_cli_modules_application/common/ui/resources/themes/theme.dart';
import 'package:xflutter_cli_modules_application/core/extensions/view_extension.dart';
import 'package:xflutter_cli_modules_application/common/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import './viewmodels/verify_pin_code_viewmodel.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/loaders/live_data_loader.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/instance/instance_state.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/core/base_scaffold.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/core/base_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage(name: 'verifyPinCode')
class VerifyPinCodeScreen extends StatefulWidget {
  final String phone;
  final PageRouteInfo? pageRoute;
  const VerifyPinCodeScreen({required this.phone, this.pageRoute, super.key});

  @override
  State<VerifyPinCodeScreen> createState() => _VerifyPinCodeScreenState();
}

class _VerifyPinCodeScreenState extends State<VerifyPinCodeScreen>
    with InstanceState<VerifyPinCodeScreen, VerifyPinCodeViewModel>, ObserverMixin {
  void observeEvents() {
    viewModel.eventEmitter.observe((value) {
      if (value != null) {
        // verification success
        if (widget.pageRoute != null) {
          appRouter.replaceAll([widget.pageRoute!]);
        }
      }
    });
  }

  @override
  void onInitState() {
    viewModel.params.phone = widget.phone;
    super.onInitState();
    observeEvents();
  }

  @override
  Widget screen(context, viewModel) {
    return Stack(
      children: [
        BaseScaffold(
          appBar: (context, theme) => BaseAppBar(title: 'verify_pin_code'.tr()),
          builder: (context, theme) => SafeArea(
            child: VerifyPinCodeWidget(
              code: viewModel.params.code,
              receiver: widget.phone,
              onChanged: viewModel.onPinCodeChanged,
              onSubmit: viewModel.submitVerificationCode,
              onResendCode: viewModel.requestVerificationCode,
            ).padding(adaptivePadding),
          ),
        ),
        LiveDataFullScreenLoader(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  VerifyPinCodeViewModel registerInstance() => VerifyPinCodeViewModel();
}