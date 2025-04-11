import 'package:flutter/material.dart';

class DashedLinePainter extends CustomPainter {
  final double width;
  final double height;

  final Color color;

  DashedLinePainter({
    required this.width,
    required this.height,
    this.color = Colors.black,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawLine(Offset(width - 80, -2), Offset(width - 85, 14), paint);

    final start = Offset(width - 80, 25);
    final end = Offset(width, height / 3);
    drawLine(canvas, paint, start, end);

    final start1 = Offset(width, height / 2);
    final end1 = Offset(width - 20, height - 35);
    drawLine(canvas, paint, start1, end1);

    final start2 = Offset(width - 20, height - 24);
    final end2 = Offset(width, height);
    drawLine(canvas, paint, start2, end2);
  }

  void drawLine(Canvas canvas, Paint paint, Offset start, Offset end) {
    const dashLength = 10;
    const dashSpacing = 10;

    final vector = end - start;
    final totalLength = vector.distance;
    final direction = vector / totalLength; // normalize manually

    double currentLength = 0;
    while (currentLength < totalLength) {
      final dashStart = start + direction * currentLength;
      final dashEnd = start +
          direction * (currentLength + dashLength).clamp(0, totalLength);

      canvas.drawLine(dashStart, dashEnd, paint);
      currentLength += dashLength + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
