import 'package:flutter/material.dart';

class TrapezoidClipper extends CustomClipper<Path> {
  final double topWidth;
  final double bottomWidth;
  final double height;
  final double borderRadius;

  TrapezoidClipper({
    required this.topWidth,
    required this.bottomWidth,
    required this.height,
    required this.borderRadius,
  });

  @override
  Path getClip(Size size) {
    final topMargin = (size.width - topWidth) / 2;

    final path = Path()

      // Top-left arc
      ..moveTo(topMargin + borderRadius, 0)
      ..arcToPoint(
        Offset(topMargin, borderRadius),
        radius: Radius.circular(borderRadius),
        clockwise: false,
      )

      // Left edge to bottom-left arc
      ..lineTo(0, size.height - borderRadius)
      ..arcToPoint(
        Offset(borderRadius, size.height),
        radius: Radius.circular(borderRadius),
        clockwise: false,
      )

      // Bottom edge to bottom-right arc
      ..lineTo(size.width - borderRadius, size.height)
      ..arcToPoint(
        Offset(size.width, size.height - borderRadius),
        radius: Radius.circular(borderRadius),
        clockwise: false,
      )

      // Right edge to top-right arc
      ..lineTo(topMargin + topWidth, borderRadius)
      ..arcToPoint(
        Offset(topMargin + topWidth - borderRadius, 0),
        radius: Radius.circular(borderRadius),
        clockwise: false,
      );

    // Close path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
