import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/common/widgets/index.dart';
import 'package:food_delivery/features/auth/presentation/widgets/index.dart';
import 'package:food_delivery/generated/l10n.dart';
import 'package:food_delivery/router/router.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: AppColors.primaryBlack,
        child: Stack(
          children: [
            TopFanBlade(),
            CustomPaint(
              size: Size(200, 100), // Chiều ngang/dọc hình chữ Z
              painter: DashedLinePainter(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 10 * 3,
                color: AppColors.primaryColor.withValues(alpha: 0.3),
              ),
            ),
            Positioned(
              top: 50,
              left: 24,
              child: InkWell(
                onTap: () {
                  if (context.canPop()) {
                    context.pop();
                  }
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: AppColors.colourWhite,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: SvgPicture.asset(AssetsPath.back),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Spacer(flex: 2),
                      Text(
                        S.of(context).forgotPassword,
                        style: AppTextStyle.of(
                          size: 30,
                          weight: AppFontWeight.bold,
                          color: AppColors.colourWhite,
                        ),
                      ),
                      Text(
                        S.of(context).forgotPasswordSubtitle,
                        style: AppTextStyle.of(
                          size: 16,
                          color: AppColors.colourWhite,
                        ),
                      ),
                      Spacer(flex: 1),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: AppColors.colourWhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).email.toUpperCase(),
                          style: AppTextStyle.of(size: 13),
                        ),
                        SizedBox(height: 8),
                        AppTextfield(
                          hintText: S.of(context).emailHint,
                          autoFocus: true,
                          controller: TextEditingController(),
                        ),
                        SizedBox(height: 30),
                        InkWell(
                          onTap: () {
                            context.push(
                              RouterName.verification.path,
                              extra: "email@gmail.com",
                            );
                          },
                          child: Container(
                            height: 62,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                S.of(context).sendCode.toUpperCase(),
                                style: AppTextStyle.of(
                                  size: 14,
                                  weight: AppFontWeight.bold,
                                  color: AppColors.colourWhite,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
