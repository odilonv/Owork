import 'dart:math';

import 'package:flutter/material.dart';

class TimerCirclePainter extends CustomPainter {
  final double percentage;
  final Color color;
  static double? maxPercentage;

  TimerCirclePainter({required this.percentage, required this.color}) {
    maxPercentage ??= percentage;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2);
    const startAngle = -pi / 2;
    final sweepAngle = 2 * pi * (percentage / maxPercentage!);

    if (percentage == 0) maxPercentage = null;

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle,
        sweepAngle, false, paint);

    const cornerRadius = 5.0;

    final endCorner = Offset(center.dx + radius * cos(startAngle + sweepAngle),
        center.dy + radius * sin(startAngle + sweepAngle));
    final fillPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = paint.color;

    canvas.drawCircle(endCorner, cornerRadius, fillPaint);
  }

  @override
  bool shouldRepaint(TimerCirclePainter oldDelegate) {
    return oldDelegate.percentage != percentage;
  }
}
