import 'dart:math' as math;

import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/common/index.dart';

const _bladeCount = 18;

class TopFanBlade extends StatelessWidget {
  const TopFanBlade({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List.generate(_bladeCount, (index) {
        // Góc xoay mục tiêu: 2π / số cánh
        final targetAngle = (math.pi / 18 * 10 * index) / _bladeCount;
        final currentAngle = targetAngle + math.pi / 2;

        return Positioned(
          top: -150,
          left: -150,
          child: SizedBox(
            height: 300,
            width: 300,
            child: Transform.rotate(
              angle: currentAngle,
              child: Align(
                alignment: Alignment.topCenter,
                child: CustomPaint(
                  size: const Size(10, 100), // chiều cao và vùng vẽ
                  painter: BladePainter(
                    color: AppColors.primaryGrey.withValues(alpha: 0.2),
                    peakSize: 6,
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
