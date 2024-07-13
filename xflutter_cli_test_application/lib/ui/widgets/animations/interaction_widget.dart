// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import 'package:xflutter_cli_test_application/utilities/async/debouncer.dart';

enum AnimationType { fade, scale, fadeScale }

class InteractionWidget extends StatefulWidget {
  final Widget child;
  final Duration? duration;
  final AnimationType type;
  final double? fadeValue;
  final double? scaleValue;
  const InteractionWidget({
    required this.child,
    this.duration,
    this.type = AnimationType.fadeScale,
    this.fadeValue,
    this.scaleValue,
    super.key,
  });

  @override
  State<InteractionWidget> createState() => InteractionWidgetState();
}

class InteractionWidgetState extends State<InteractionWidget> with SingleTickerProviderStateMixin {
  double? _scale;
  AnimationController? _controller;
  Duration get _duration => widget.duration ?? const Duration(milliseconds: 150);
  final debouncer = Debouncer(delay: const Duration(milliseconds: 100));
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: _duration,
      lowerBound: 0.0,
      upperBound: widget.scaleValue ?? 0.025,
    )
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller!.reverse();
        }
      })
      ..addListener(() {
        if (mounted) setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  bool isCompleted() => _controller?.isAnimating == false;

  void animate({Function()? callback}) {
    if (isCompleted()) {
      debouncer.call(() {
        _controller?.forward().whenCompleteOrCancel(() => callback?.call());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - (_controller?.value ?? 0);
    return StatefulBuilder(
      builder: (context, setState) {
        switch (widget.type) {
          case AnimationType.scale:
            return Transform.scale(
              scale: _scale,
              child: widget.child,
            );

          case AnimationType.fade:
            return AnimatedOpacity(
              opacity: _controller?.value == 0 ? 1 : widget.fadeValue ?? 0.1,
              duration: _duration,
              child: widget.child,
            );

          case AnimationType.fadeScale:
          default:
            return Transform.scale(
              scale: _scale,
              child: AnimatedOpacity(
                opacity: _controller?.value == 0 ? 1 : widget.fadeValue ?? 0.35,
                duration: _duration,
                child: widget.child,
              ),
            );
        }
      },
    );
  }
}
