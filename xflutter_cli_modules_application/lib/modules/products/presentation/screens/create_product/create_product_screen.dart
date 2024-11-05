// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:xflutter_cli_modules_application/common/di/app_injectable.config.dart';
import './viewmodels/create_product_viewmodel.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'mobile/create_product_mobile_screen.dart';
import 'package:xflutter_cli_modules_application/common/data/models/di/di_scope/di_scope.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/loaders/live_data_loader.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/instance/lifecycle_owner.dart';
import 'package:xflutter_cli_modules_application/core/extensions/di_extension.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/core/base_scaffold.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/core/base_appbar.dart';

@RoutePage(name: 'createProduct')
class CreateProductScreen extends StatefulWidget {
  const CreateProductScreen({super.key});

  @override
  State<CreateProductScreen> createState() => _CreateProductScreenState();
}

class _CreateProductScreenState extends State<CreateProductScreen> with LifecycleOwner<CreateProductScreen, CreateProductViewModel>, ObserverMixin {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // screen body
        BaseScaffold(
          appBar: (context, theme) => BaseAppBar(title: 'create_product'.tr()),
          builder: (context, theme) => SafeArea(
            child: ScreenTypeLayout.builder(
              mobile: (_) => const CreateProductMobileScreen(),
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
        name: 'createProduct',
        factory: getIt.initCreateProductScope,
        dependencies: [],
      );
}
