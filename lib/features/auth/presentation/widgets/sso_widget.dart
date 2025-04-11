import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';

class SsoWidget extends StatelessWidget {
  const SsoWidget({
    super.key,
    this.fbCallback,
    this.ggCallback,
    this.appleCallback,
  });
  final VoidCallback? fbCallback;
  final VoidCallback? ggCallback;
  final VoidCallback? appleCallback;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        InkWell(
          onTap: fbCallback,
          child: Container(
            height: 62,
            width: 62,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(62),
              color: AppColors.colourBlue,
            ),
            child: Center(
                child: Text(
              "F",
              style: AppTextStyle.of(
                size: 30,
                color: AppColors.colourWhite,
                weight: AppFontWeight.bold,
              ),
            )),
          ),
        ),
        SizedBox(width: 30),
        InkWell(
          onTap: ggCallback,
          child: Container(
            height: 62,
            width: 62,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(62),
              color: AppColors.colourGreen,
            ),
            child: Center(
                child: Text(
              "G",
              style: AppTextStyle.of(
                size: 30,
                color: AppColors.colourWhite,
                weight: AppFontWeight.bold,
              ),
            )),
          ),
        ),
        SizedBox(width: 30),
        InkWell(
          onTap: appleCallback,
          child: Container(
            height: 62,
            width: 62,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(62),
              color: AppColors.primaryBlack,
            ),
            child: Center(
                child: Text(
              "A",
              style: AppTextStyle.of(
                size: 30,
                color: AppColors.colourWhite,
                weight: AppFontWeight.bold,
              ),
            )),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
