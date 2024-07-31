// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:customer_app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import './viewmodels/change_password_viewmodel.dart';
import 'package:core/core.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'mobile/change_password_mobile_screen.dart';
import 'tablet/change_password_tablet_screen.dart';

@RoutePage(name: 'changePassword')
class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> with InstanceState<ChangePasswordScreen, ChangePasswordViewModel>, ObserverMixin {
  void observeEvents() {
    viewModel.eventEmitter.observe((value) {
      if (value != null) {
        // change password success
        appRouter.maybePop(true);
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
          appBar: (context, theme) => BaseAppBar(title: 'change_password'.tr()),
          builder: (context, theme) => SafeArea(
            child: ScreenTypeLayout.builder(
              mobile: (context) => const ChangePasswordMobileScreen(),
              tablet: (context) => const ChangePasswordTabletScreen(),
            ),
          ),
        ),
        LiveDataFullScreenLoader(loading: viewModel.baseParams.loading),
      ],
    );
  }

  @override
  ChangePasswordViewModel registerInstance() => ChangePasswordViewModel();
}
