import 'dart:math';

import 'package:flutter/material.dart';

class TimerCirclePainter extends CustomPainter {
  final double percentage;
  final Color color;
  static double? maxPercentage;

  TimerCirclePainter({required this.percentage, required this.color}) {
    if (maxPercentage == null) {
      maxPercentage = percentage;
    }
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
  }

  @override
  bool shouldRepaint(TimerCirclePainter oldDelegate) {
    return oldDelegate.percentage != percentage;
  }
}
