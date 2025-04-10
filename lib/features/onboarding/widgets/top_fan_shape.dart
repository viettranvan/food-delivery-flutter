import 'dart:math' as math;

import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/common/index.dart';

class TopFanShapeAnimation extends StatefulWidget {
  const TopFanShapeAnimation({super.key});

  @override
  TopFanShapeAnimationState createState() => TopFanShapeAnimationState();
}

class TopFanShapeAnimationState extends State<TopFanShapeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  int bladeCount = 30; // Số cánh
  double pi = math.pi;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget buildBlade(int index) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        // Góc xoay mục tiêu: 2π / số cánh
        double targetAngle = (pi / 18 * 15 * index) / bladeCount;
        double currentAngle = targetAngle * _animation.value + (pi / 2);

        return Transform.rotate(
          angle: currentAngle,
          child: Align(
            alignment: Alignment.topCenter,
            child: CustomPaint(
              size: Size(10, 100), // chiều cao và vùng vẽ
              painter: BladePainter(
                color: AppColors.primaryGrey.withValues(alpha: 0.1),
                peakSize: 8,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: List.generate(bladeCount, buildBlade),
      ),
    );
  }
}
