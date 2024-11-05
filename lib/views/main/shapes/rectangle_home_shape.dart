import 'package:flutter/material.dart';

class RectangleHomeShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1
    // background: linear-gradient(170.76deg, #37B6E9 6.44%, #4B4CED 99.29%);

    paint.color = const Color(0xff37B6E9);
    path.moveTo(242.5, 167.5);
    path.lineTo(322, 0);
    path.lineTo(393.5, 59.5);
    path.lineTo(393.5, 720.5);
    path.lineTo(-20, 705);
    path.lineTo(242.5, 167.5);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
