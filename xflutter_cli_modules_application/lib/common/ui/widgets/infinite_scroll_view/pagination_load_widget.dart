// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import '../animations/customized_animated_widget.dart';

class PaginationLoaderWidget extends StatelessWidget {
  const PaginationLoaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomizedAnimatedWidget(
      child: SizedBox(width: 30, height: 30, child: CircularProgressIndicator.adaptive()),
    );
  }
}