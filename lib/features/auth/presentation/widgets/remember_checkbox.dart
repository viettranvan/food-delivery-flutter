import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/generated/l10n.dart';

class RememberAndCheckbox extends StatefulWidget {
  const RememberAndCheckbox({
    super.key,
    required this.onRememberMeChanged,
    required this.onForgotPassword,
  });
  final Function(bool) onRememberMeChanged;
  final VoidCallback onForgotPassword;

  @override
  State<RememberAndCheckbox> createState() => _RememberAndCheckboxState();
}

class _RememberAndCheckboxState extends State<RememberAndCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
            widget.onRememberMeChanged.call(isChecked);
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: AppColors.secondaryGrey.withValues(alpha: 0.5),
                width: 2,
              ),
            ),
            child: isChecked
                ? SvgPicture.asset(
                    AssetsPath.check,
                    colorFilter: ColorFilter.mode(
                      AppColors.secondaryGrey.withValues(alpha: 0.5),
                      BlendMode.srcIn,
                    ),
                  )
                : null,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          S.of(context).rememberMe,
          style: AppTextStyle.of(size: 13, color: AppColors.primaryGrey),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            widget.onForgotPassword.call();
          },
          child: Text(
            S.of(context).forgotPassword,
            style: AppTextStyle.of(size: 14, color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
