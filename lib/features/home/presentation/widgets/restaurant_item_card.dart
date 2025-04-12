import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/generated/l10n.dart';

class RestaurantItemCard extends StatelessWidget {
  const RestaurantItemCard({
    super.key,
    required this.name,
    required this.subTitile,
    required this.rating,
    required this.shipingFee,
    required this.duration,
  });
  final String name;
  final String subTitile;
  final double rating;
  final String shipingFee;
  final int duration;

  @override
  Widget build(BuildContext context) {
    final tempWidth = MediaQuery.of(context).size.width - 24 * 2;
    final validWidth = tempWidth > 400 ? 400 : tempWidth;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 140,
          width: validWidth.toDouble(),
          decoration: BoxDecoration(
            color: AppColors.secondaryGrey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(height: 15),
        Text(
          name,
          style: AppTextStyle.of(
            size: 20,
            color: AppColors.primaryBlack,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          subTitile,
          style: AppTextStyle.of(
            size: 14,
            color: AppColors.secondaryGrey,
          ),
        ),
        const Spacer(),
        Row(
          children: [
            SvgPicture.asset(
              AssetsPath.star,
              height: 20,
              colorFilter: const ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              rating.toString(),
              style: AppTextStyle.of(
                size: 16,
                weight: AppFontWeight.bold,
                color: AppColors.primaryBlack,
              ),
            ),
            const SizedBox(width: 24),
            SvgPicture.asset(
              AssetsPath.car,
              height: 20,
              colorFilter: const ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              shipingFee,
              style: AppTextStyle.of(
                size: 14,
                color: AppColors.primaryBlack,
              ),
            ),
            const SizedBox(width: 24),
            SvgPicture.asset(
              AssetsPath.watch,
              height: 20,
              colorFilter: const ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              '$duration ${S.of(context).min}',
              style: AppTextStyle.of(
                size: 14,
                color: AppColors.primaryBlack,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
