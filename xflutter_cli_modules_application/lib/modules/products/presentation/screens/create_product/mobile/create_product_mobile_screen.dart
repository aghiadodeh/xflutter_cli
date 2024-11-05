// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:xflutter_cli_modules_application/modules/products/presentation/widgets/product_form.dart';
import 'package:xflutter_cli_modules_application/common/ui/resources/themes/theme.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/core/base_scrollview.dart';
import 'package:flutter/material.dart';
import '../viewmodels/create_product_viewmodel.dart';
import 'package:xflutter_cli_modules_application/common/ui/widgets/instance/instance_builder.dart';

class CreateProductMobileScreen extends StatelessWidget {
  const CreateProductMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<CreateProductViewModel>(
      builder: (CreateProductViewModel viewModel) {
        return BaseScrollView(
          padding: adaptivePadding,
          child: ProductForm(
            submit: viewModel.submit,
          ),
        );
      },
    );
  }
}