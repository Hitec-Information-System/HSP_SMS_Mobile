import 'package:flutter/cupertino.dart';

class Circle extends StatelessWidget {
  final Color color;
  final double radius;

  const Circle({
    Key? key,
    required this.color,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: radius * 2,
      height: radius * 2,
      child: CustomPaint(
        painter: CirclePainter(color, radius),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  final Color color;
  final double radius;

  const CirclePainter(this.color, this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    final _paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    canvas.drawOval(Rect.fromLTRB(0, 0, size.width, size.height), _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
