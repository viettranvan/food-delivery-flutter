import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/generated/l10n.dart';

class BriefActionTitle extends StatelessWidget {
  const BriefActionTitle({
    super.key,
    required this.title,
    required this.seeAllCallback,
  });

  final String title;
  final VoidCallback seeAllCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: AppTextStyle.of(size: 20),
            ),
          ),
          InkWell(
            onTap: seeAllCallback,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  S.of(context).seeAll,
                  style: AppTextStyle.of(
                    size: 16,
                    color: AppColors.black33,
                  ),
                ),
                SvgPicture.asset(
                  AssetsPath.next,
                  height: 20,
                  width: 20,
                  colorFilter: const ColorFilter.mode(
                    AppColors.secondaryGrey,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
