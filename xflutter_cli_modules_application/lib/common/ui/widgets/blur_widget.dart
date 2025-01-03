// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class BlurWidget extends StatelessWidget {
  final double width;
  final double height;
  final double blur;
  const BlurWidget({
    required this.width,
    required this.height,
    this.blur = 3,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            width: width,
            height: height,
            color: Colors.black.withOpacity(0.35),
          ),
        ),
      ),
    );
  }
}
