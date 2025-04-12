import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/features/home/presentation/widgets/index.dart';
import 'package:food_delivery/generated/l10n.dart';

class CategoryItemCard extends StatelessWidget {
  const CategoryItemCard({
    super.key,
    required this.title,
    required this.starting,
  });
  final String title;
  final double starting;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: ClipPath(
              clipper: TrapezoidClipper(
                topWidth: 135,
                bottomWidth: 150,
                height: 150,
                borderRadius: 24,
              ),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: AppColors.colourWhite.withValues(
                    alpha: 0.6,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Positioned(
            left: 12,
            right: 12,
            top: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.secondaryGrey,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Positioned(
            left: 12,
            right: 12,
            top: 100 + 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.of(
                    size: 18,
                    weight: AppFontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        S.of(context).starting,
                        style: AppTextStyle.of(size: 14),
                      ),
                    ),
                    Text('\$$starting'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
