import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/generated/l10n.dart';

class CouponDialog {
  static void show(
    BuildContext context, {
    required String couponTitle,
    required String couponId,
    required String couponDescripton,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (contex) {
        final validWith = MediaQuery.sizeOf(context).width > 400
            ? 400
            : MediaQuery.sizeOf(context).width;
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.all(24),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: validWith.toDouble(),
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffFFEB34),
                      Color(0xffE76F00),
                    ],
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                child: Stack(
                  children: [
                    Positioned(
                      top: 30,
                      left: 30,
                      child: SvgPicture.asset(AssetsPath.couponBg),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            couponTitle,
                            style: AppTextStyle.of(
                              size: 40,
                              color: AppColors.colourWhite,
                              weight: AppFontWeight.extraBold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Center(
                          child: Text(
                            couponId,
                            style: AppTextStyle.of(
                              size: 30,
                              weight: AppFontWeight.bold,
                              color: AppColors.colourWhite,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              couponDescripton,
                              textAlign: TextAlign.center,
                              style: AppTextStyle.of(
                                size: 18,
                                weight: AppFontWeight.bold,
                                color: AppColors.colourWhite,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 62,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: AppColors.colourWhite,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                S.of(context).gotIt.toUpperCase(),
                                style: AppTextStyle.of(
                                  size: 16,
                                  weight: AppFontWeight.bold,
                                  color: AppColors.colourWhite,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -20,
                right: 0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: AppColors.lightYellow,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AssetsPath.close,
                        height: 20,
                        width: 20,
                        colorFilter: const ColorFilter.mode(
                          AppColors.primaryColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
