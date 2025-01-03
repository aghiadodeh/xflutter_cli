// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:xflutter_cli_test_application/data/models/entities/product/product.dart';
import '../widgets/products_list_widget.dart';
import 'package:xflutter_cli_test_application/mediators/paging/products_paging_controller.dart';
import 'package:xflutter_cli_test_application/extensions/di_extension.dart';
import 'package:xflutter_cli_test_application/router/app_router.dart';
import 'package:flutter/material.dart';
import '../viewmodels/products_list_viewmodel.dart';
import 'package:xflutter_cli_test_application/ui/widgets/instance/instance_builder.dart';

class ProductsListMobileScreen extends StatelessWidget {
  const ProductsListMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<ProductsListViewModel>(
      builder: (ProductsListViewModel viewModel) {
        return ProductsListWidget(
          controller: getIt<ProductsPagingController>(),
          onDelete: viewModel.deleteProduct,
          onPressed: (product) => appRouter.push(ViewProductDetails(id: product.id!)),
          onUpdate: (product) async {
            final result = await appRouter.push(UpdateProduct(id: product.id!));
            if (result is Product) {
              // update product in the list
              viewModel.updateProduct(result);
            }
          },
        );
      },
    );
  }
}
