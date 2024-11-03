import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:notes/common/indicator/shape_painter.dart';
 

class DotsIndicator extends StatefulWidget {
  const DotsIndicator({
    super.key,
    this.sides = 4,
    this.dotRadius = 4.0,
    this.radiusMin = 0.0,
    this.radiusMax = 23.0,
    this.rotationController,
    this.radiusController,
  });

  final int sides;
  final double dotRadius;
  final double radiusMin;
  final double radiusMax;
  final AnimationController? rotationController;
  final AnimationController? radiusController;

  @override
  State<DotsIndicator> createState() => _DotsIndicatorState();
}

class _DotsIndicatorState extends State<DotsIndicator> with TickerProviderStateMixin {
  late final Animation<double> rotationAnimation;
  late final AnimationController rotationController;

  late final Animation<double> radiusAnimation;
  late final AnimationController radiusController;

  @override
  void initState() {
    super.initState();

    rotationController = widget.rotationController ?? AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));
    radiusController = widget.radiusController ?? AnimationController(vsync: this, duration: const Duration(milliseconds: 600));

    Tween<double> rotationTween = Tween(begin: -math.pi, end: math.pi);
    Tween<double> radiusTween = Tween(begin: widget.radiusMin, end: widget.radiusMax);

    final rotationCurve = CurvedAnimation(parent: rotationController, curve: Curves.linear);
    final radiusCurve = CurvedAnimation(parent: radiusController, curve: Curves.ease);

    rotationAnimation = rotationTween.animate(rotationCurve)
      ..addListener(() {
        if (mounted) {
          setState(() {});
        }
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          rotationController.repeat();
        } else if (status == AnimationStatus.dismissed) {
          rotationController.forward();
        }
      });

    radiusAnimation = radiusTween.animate(radiusCurve)
      ..addListener(() {
        if (mounted) {
          setState(() {});
        }
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          radiusController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          radiusController.forward();
        }
      });

    if (widget.rotationController == null) rotationController.forward();
    if (widget.radiusController == null) radiusController.forward();
  }

  @override
  void dispose() {
    if (widget.rotationController == null) rotationController.dispose();
    if (widget.radiusController == null) radiusController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: rotationAnimation,
      builder: (context, snapshot) {
        return CustomPaint(
          painter: ShapePainter(
            sides: widget.sides,
            distanceFromCenter: radiusAnimation.value,
            radians: rotationAnimation.value,
            dotRadius: widget.dotRadius,
            color: Theme.of(context).colorScheme.primary,
          ),
        );
      },
    );
  }
}
