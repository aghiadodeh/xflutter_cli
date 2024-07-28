// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:products/products.dart';

@RoutePage(name: 'adminProducts')
class AdminProductsScreen extends StatefulWidget {
  const AdminProductsScreen({super.key});

  @override
  State<AdminProductsScreen> createState() => _AdminProductsScreenState();
}

class _AdminProductsScreenState extends State<AdminProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BaseAppBar(title: "Admin App"),
      body: SafeArea(
        child: ProductsScreen(),
      ),
    );
  }
}
