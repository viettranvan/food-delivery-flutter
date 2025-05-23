import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/common/index.dart';
import 'package:food_delivery/features/auth/presentation/widgets/index.dart';
import 'package:food_delivery/generated/l10n.dart';
import 'package:food_delivery/router/router.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: AppColors.primaryBlack,
        child: Stack(
          children: [
            const TopFanBlade(),
            CustomPaint(
              size: const Size(200, 100), // Chiều ngang/dọc hình chữ Z
              painter: DashedLinePainter(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 10 * 3,
                color: AppColors.primaryGrey.withValues(alpha: 0.2),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      const Spacer(flex: 2),
                      Text(
                        S.of(context).login,
                        style: AppTextStyle.of(
                          size: 30,
                          weight: AppFontWeight.bold,
                          color: AppColors.colourWhite,
                        ),
                      ),
                      Text(
                        S.of(context).loginSubtitle,
                        style: AppTextStyle.of(
                          size: 16,
                          color: AppColors.colourWhite,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: const BoxDecoration(
                      color: AppColors.colourWhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            S.of(context).email.toUpperCase(),
                            style: AppTextStyle.of(size: 13),
                          ),
                          const SizedBox(height: 8),
                          AppTextfield(
                            hintText: S.of(context).emailHint,
                            controller: TextEditingController(),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            S.of(context).password.toUpperCase(),
                            style: AppTextStyle.of(size: 13),
                          ),
                          const SizedBox(height: 8),
                          AppTextfield(
                            hintText: S.of(context).passwordHint,
                            hasSufficIcon: true,
                            controller: TextEditingController(),
                          ),
                          const SizedBox(height: 24),
                          RememberAndCheckbox(
                            onRememberMeChanged: (value) {},
                            onForgotPassword: () {
                              context.push(RouterName.forgotPassword.path);
                            },
                          ),
                          const SizedBox(height: 30),
                          InkWell(
                            onTap: () {
                              context.replace(RouterName.home.path);
                            },
                            child: Container(
                              height: 62,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  S.of(context).login.toUpperCase(),
                                  style: AppTextStyle.of(
                                    size: 14,
                                    weight: AppFontWeight.bold,
                                    color: AppColors.colourWhite,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              Text(
                                S.of(context).dontHaveAnAccount,
                                style: AppTextStyle.of(
                                  size: 14,
                                  color: AppColors.primaryGrey,
                                ),
                              ),
                              const SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  context.push(RouterName.signUp.path);
                                },
                                child: Text(
                                  S.of(context).signUp.toUpperCase(),
                                  style: AppTextStyle.of(
                                    weight: AppFontWeight.bold,
                                    size: 14,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Center(
                            child: Text(
                              S.of(context).or,
                              style: AppTextStyle.of(
                                size: 16,
                                color: AppColors.primaryGrey,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          const SsoWidget(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
