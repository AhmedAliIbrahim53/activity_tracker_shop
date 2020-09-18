import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  final Color color;
  CurvePainter({@required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path();

    path.moveTo(0.0, size.height * 0.6);
    path.arcToPoint(
      Offset(size.width, size.height * 0.45),
      clockwise: false,
      radius: Radius.elliptical(size.width * 1.25, size.height * 0.85),
    );
    path.lineTo(size.width, size.height * 0.65);
    path.arcToPoint(
      Offset(0.0, size.height * 0.8),
      clockwise: false,
      radius: Radius.elliptical(size.width, size.height * 0.6),
    );
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
