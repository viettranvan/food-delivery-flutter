import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  static TextStyle regular({
    double? size,
    Color color = AppColors.defaultTextColor,
    double? height,
    double? letterSpacing,
  }) =>
      TextStyle(
        fontSize: size,
        color: color,
        height: height,
        letterSpacing: letterSpacing,
      );

  static TextStyle medium({
    double? size,
    Color color = AppColors.defaultTextColor,
    double? height,
    double? letterSpacing,
  }) =>
      TextStyle(
        fontSize: size,
        color: color,
        height: height,
        letterSpacing: letterSpacing,
        fontWeight: FontWeight.w500,
      );

  static TextStyle semiBold({
    double? size,
    Color color = AppColors.defaultTextColor,
    double? height,
    double? letterSpacing,
  }) =>
      TextStyle(
        fontSize: size,
        color: color,
        height: height,
        letterSpacing: letterSpacing,
        fontWeight: FontWeight.w600,
      );

  static TextStyle bold({
    double? size,
    Color color = AppColors.defaultTextColor,
    double? height,
    double? letterSpacing,
  }) =>
      TextStyle(
        fontSize: size,
        color: color,
        height: height,
        letterSpacing: letterSpacing,
        fontWeight: FontWeight.w700,
      );

  static TextStyle extraBold({
    double? size,
    Color color = AppColors.defaultTextColor,
    double? height,
    double? letterSpacing,
  }) =>
      TextStyle(
        fontSize: size,
        color: color,
        height: height,
        letterSpacing: letterSpacing,
        fontWeight: FontWeight.w800,
      );
}
