import 'dart:math' as math;
import 'package:flutter/material.dart';

class ShapePainter extends CustomPainter {
  final int sides;
  final double distanceFromCenter;
  final double radians;
  final double dotRadius;
  final Color color;

  ShapePainter({
    required this.sides,
    required this.distanceFromCenter,
    required this.radians,
    required this.dotRadius,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;

    var angle = (math.pi * 2) / sides;

    Offset center = Offset(size.width / 2, size.height / 2);

    for (int i = 1; i <= sides; i++) {
      double x = distanceFromCenter * math.cos(radians + angle * i) + center.dx;
      double y = distanceFromCenter * math.sin(radians + angle * i) + center.dy;

      canvas.drawCircle(Offset(x, y), dotRadius, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
