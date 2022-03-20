import 'package:flutter/material.dart';

class Painter extends CustomPainter {
  int copiesNumber;
  Painter(this.copiesNumber);

  @override
  void paint(Canvas canvas, Size size) {
    Paint headPaint = Paint()..color = Colors.green.shade900;
    double headRadius = 13;
    double dx = 90, dy = 70;
    _theWormBody(canvas, dx, dy, headPaint, headRadius);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  void _theWormBody(
      Canvas canvas, double dx, double dy, Paint paint, double radius) {
    Offset offset = Offset(dx, dy);
    canvas.drawCircle(offset, 10, paint);

    if (copiesNumber > 0) {
      Paint bodyPaint = Paint()..color = Colors.green;
      copiesNumber--;
      _theWormBody(canvas, dx - 14, dy - 14, bodyPaint, 10);
    }
  }
}
