import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppTextfield extends StatefulWidget {
  const AppTextfield({
    super.key,
    this.hintText,
    this.hasSufficIcon = false,
    this.autoFocus = false,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.textInputAction,
  });
  final String? hintText;
  final bool hasSufficIcon;
  final bool autoFocus;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;

  @override
  State<AppTextfield> createState() => _AppTextfieldState();
}

class _AppTextfieldState extends State<AppTextfield> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: widget.autoFocus,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      obscureText: _isObscure,
      obscuringCharacter: '*',
      style: AppTextStyle.of(
        size: 14,
        letterSpacing: (widget.hasSufficIcon && _isObscure) ? 0.475 * 14 : null,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: AppTextStyle.of(
          size: 14,
          color: AppColors.secondaryGrey,
          letterSpacing: (widget.hasSufficIcon) ? 0.475 * 14 : null,
        ),
        fillColor: AppColors.primaryMint,
        filled: true,
        contentPadding: const EdgeInsets.fromLTRB(20, 24, 24, 24),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        suffixIcon: widget.hasSufficIcon
            ? InkWell(
                onTap: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: SvgPicture.asset(
                    _isObscure ? AssetsPath.eye : AssetsPath.eysOff,
                    colorFilter: const ColorFilter.mode(
                      AppColors.iconGrey,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
