import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PiePainter extends CustomPainter {
  final double angle;
  final List<Color> colors;

  const PiePainter({
    this.angle = 140,
    required this.colors,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const pieWidth = 7.0;
    const compensation = 1.0;

    final dotPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = pieWidth;

    final center = size.center(const Offset(0, 0));
    final circleRadius = math.min(size.width / 2, size.height / 2) - pieWidth;

    final gradient = SweepGradient(
      colors: colors,
    );

    final skeletonPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.grey.withOpacity(.4)
      ..strokeWidth = 3;

    final paint = Paint()
      ..shader = gradient.createShader(
        Rect.fromLTWH(
          0.0,
          0.0,
          size.width,
          size.width,
        ),
      )
      ..strokeCap = StrokeCap.round // StrokeCap.round is not recommended.
      ..style = PaintingStyle.stroke
      ..strokeWidth = pieWidth * 2;

    canvas.drawCircle(
      center,
      circleRadius,
      skeletonPaint,
    );

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: circleRadius),
      degreeToRadians(-90),
      degreeToRadians(angle + compensation),
      false,
      paint,
    );
    canvas.save();

    final centerToCircle = size.width / 2;

    canvas
      ..translate(centerToCircle, centerToCircle)
      ..rotate(degreeToRadians(angle + compensation));
    canvas.save();

    canvas.translate(0, -centerToCircle + pieWidth);
    canvas.drawCircle(const Offset(0, 0), pieWidth - 2, dotPaint);
    canvas.save();

    canvas.restore();
    canvas.restore();
    canvas.restore();
  }

  double degreeToRadians(double degree) {
    return (math.pi / 180) * degree;
  }

  @override
  bool shouldRepaint(covariant PiePainter oldDelegate) {
    return angle != oldDelegate.angle;
  }
}
