// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import '../animations/customized_animated_widget.dart';
import 'loader.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomizedAnimatedWidget(
      duration: const Duration(milliseconds: 350),
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.05),
        body: const Center(child: Loader()),
      ),
    );
  }
}
