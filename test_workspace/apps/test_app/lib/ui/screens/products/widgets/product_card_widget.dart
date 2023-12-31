/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import 'package:test_app/models/models.dart';
import 'package:core/core.dart';

class ProductCardWidget extends StatelessWidget {
  final Product product;
  const ProductCardWidget(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWidget(
      builder: (context, theme) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: theme.colorScheme.background,
          borderRadius: BorderRadius.circular(unitAndHalf),
          boxShadow: const [
            BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.1), blurRadius: 2),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // product image
            if (product.thumbnail != null)
              AspectRatio(
                aspectRatio: 2,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.shade200,
                  ),
                  child: Image.network(product.thumbnail!),
                ),
              ),

            // product title
            Text(product.title ?? '-', style: mediumTextStyle).padding(
              const EdgeInsets.symmetric(vertical: unit),
            ),

            // product price
            Text(
              product.price?.toStringAsFixed(2) ?? '-',
              style: normalTextStyle.copyWith(color: theme.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
