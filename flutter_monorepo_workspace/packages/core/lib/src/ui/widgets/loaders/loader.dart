// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader extends StatelessWidget {
  final Color? color;
  final double? size;
  const Loader({this.color, this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return SpinKitCircle(
      color: color ?? Theme.of(context).primaryColor,
      size: size ?? MediaQuery.of(context).size.width * 0.15,
    );
  }
}