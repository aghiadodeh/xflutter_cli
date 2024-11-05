// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import 'package:xflutter_cli_modules_application/modules/products/data/models/entities/product/product.dart';

class ProductCardWidget extends StatelessWidget {
  final Product product;
  final Function() onUpdate;
  final Function() onDelete;

  const ProductCardWidget(this.product, {required this.onUpdate, required this.onDelete, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  const Placeholder(fallbackWidth: 150, fallbackHeight: 75),
                  const Spacer(flex: 1),

                  // actions
                  IconButton(
                    onPressed: onUpdate,
                    icon: Icon(Icons.edit, color: theme.primaryColor),
                  ),
                  IconButton(
                    onPressed: onDelete,
                    icon: const Icon(Icons.delete, color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
