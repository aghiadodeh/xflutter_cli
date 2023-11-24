/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:flutter/material.dart';
import 'customized_animated_widget.dart';

class AnimatedColumn extends StatelessWidget {
  final List<Widget> children;
  final double animateDelay;
  final int duration;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;

  /// [Column] with animate children one by one.
  ///
  /// [children] the list of widgets wrapped in Column.
  ///
  /// [duration] the animation duration in milliseconds.
  ///
  /// [mainAxisAlignment] the Column [MainAxisAlignment].
  ///
  /// [crossAxisAlignment] the Column [CrossAxisAlignment].
  ///
  /// [mainAxisSize] the Column [MainAxisSize].
  const AnimatedColumn({
    required this.children,
    this.animateDelay = 20, // delay between every view and previousView
    this.duration = 350,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    widgetDuration(Widget e) => Duration(milliseconds: duration + (children.indexOf(e) * animateDelay).toInt());

    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: children.map((e) => CustomizedAnimatedWidget(duration: widgetDuration(e), child: e)).toList(),
    );
  }
}
