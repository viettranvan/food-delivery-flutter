import 'package:flutter/material.dart';

class BladePainter extends CustomPainter {
  final Color color;
  final double peakSize;
  BladePainter({required this.color, this.peakSize = 10});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    // Vẽ hình thang hoặc tam giác thuôn
    Path path = Path()
      ..moveTo(size.width / 2 - peakSize / 2, 0) // Đỉnh: rộng 10
      ..lineTo(size.width / 2 + peakSize / 2, 0)
      ..lineTo(size.width / 2 + 1, size.height) // Đáy: rộng 2
      ..lineTo(size.width / 2 - 1, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant BladePainter oldDelegate) => false;
}
