// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import '../../../../models/models.dart';
import 'product_card_widget.dart';
import 'product_redacted_widget.dart';
import '../viewmodels/products_viewmodel.dart';
import 'package:core/core.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<ProductsViewModel>(
      builder: (viewModel) => InfiniteScrollView<ProductsViewModel, Product>(
        viewModel: viewModel,
        loadingWidget: const ProductRedactedWidget(),
        itemBuilder: (context, index, item) => ProductCardWidget(item),
      ),
    );
  }
}
