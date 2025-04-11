// import 'package:flutter/material.dart';

// import 'app_colors.dart';

// class AppTextStyle {

//   static TextStyle regular({
//     double? size,
//     Color color = AppColors.defaultTextColor,
//     double? height,
//     double? letterSpacing,
//     TextDecoration? decoration,
//   }) =>
//       TextStyle(
//         fontSize: size,
//         color: color,
//         height: height,
//         letterSpacing: letterSpacing,
//         decoration: decoration,
//       );

//   static TextStyle medium({
//     double? size,
//     Color color = AppColors.defaultTextColor,
//     double? height,
//     double? letterSpacing,
//     TextDecoration? decoration,
//   }) =>
//       TextStyle(
//         fontSize: size,
//         color: color,
//         height: height,
//         letterSpacing: letterSpacing,
//         fontWeight: FontWeight.w500,
//         decoration: decoration,
//       );

//   static TextStyle semiBold({
//     double? size,
//     Color color = AppColors.defaultTextColor,
//     double? height,
//     double? letterSpacing,
//     TextDecoration? decoration,
//   }) =>
//       TextStyle(
//         fontSize: size,
//         color: color,
//         height: height,
//         letterSpacing: letterSpacing,
//         fontWeight: FontWeight.w600,
//         decoration: decoration,
//       );

//   static TextStyle bold({
//     double? size,
//     Color color = AppColors.defaultTextColor,
//     double? height,
//     double? letterSpacing,
//     TextDecoration? decoration,
//   }) =>
//       TextStyle(
//         fontSize: size,
//         color: color,
//         height: height,
//         letterSpacing: letterSpacing,
//         fontWeight: FontWeight.w700,
//         decoration: decoration,
//       );

//   static TextStyle extraBold({
//     double? size,
//     Color color = AppColors.defaultTextColor,
//     double? height,
//     double? letterSpacing,
//     TextDecoration? decoration,
//   }) =>
//       TextStyle(
//         fontSize: size,
//         color: color,
//         height: height,
//         letterSpacing: letterSpacing,
//         fontWeight: FontWeight.w800,
//         decoration: decoration,
//       );
// }

import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';

enum AppFontWeight {
  regular,
  medium,
  semiBold,
  bold,
  extraBold,
}

extension AppFontWeightExtension on AppFontWeight {
  FontWeight get fontWeight {
    switch (this) {
      case AppFontWeight.medium:
        return FontWeight.w500;
      case AppFontWeight.semiBold:
        return FontWeight.w600;
      case AppFontWeight.bold:
        return FontWeight.w700;
      case AppFontWeight.extraBold:
        return FontWeight.w800;
      case AppFontWeight.regular:
        return FontWeight.normal;
    }
  }
}

class AppTextStyle {
  static TextStyle of({
    double? size,
    Color color = AppColors.defaultTextColor,
    double? height,
    double? letterSpacing,
    TextDecoration? decoration,
    AppFontWeight weight = AppFontWeight.regular,
  }) {
    return TextStyle(
      fontSize: size,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
      decoration: decoration,
      fontWeight: weight.fontWeight,
    );
  }
}
