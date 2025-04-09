import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  static TextStyle regular({
    double? size,
    Color color = AppColors.colourBlack,
    double? height,
  }) =>
      TextStyle(
        fontSize: size,
        color: color,
        height: height,
      );

  static TextStyle medium({
    double? size,
    Color color = AppColors.colourBlack,
    double? height,
  }) =>
      TextStyle(
        fontSize: size,
        color: color,
        height: height,
        fontWeight: FontWeight.w500,
      );

  static TextStyle semiBold({
    double? size,
    Color color = AppColors.colourBlack,
    double? height,
  }) =>
      TextStyle(
        fontSize: size,
        color: color,
        height: height,
        fontWeight: FontWeight.w600,
      );

  static TextStyle bold({
    double? size,
    Color color = AppColors.colourBlack,
    double? height,
  }) =>
      TextStyle(
        fontSize: size,
        color: color,
        height: height,
        fontWeight: FontWeight.w700,
      );

  static TextStyle extraBold({
    double? size,
    Color color = AppColors.colourBlack,
    double? height,
  }) =>
      TextStyle(
        fontSize: size,
        color: color,
        height: height,
        fontWeight: FontWeight.w800,
      );
}
