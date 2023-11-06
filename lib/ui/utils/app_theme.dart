import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_colors.dart';

abstract class AppTheme {
  static const TextStyle appBarTitleTextStyle = TextStyle(
      fontSize: 30, fontWeight: FontWeight.w700, color: AppColors.accentColor);
  static const TextStyle afterLogo = TextStyle(
    color: AppColors.accentColor,
    fontSize: 25,
    fontWeight: FontWeight.w600,
    fontFamily: "ElMessiri",
  );
  static const TextStyle sebhaCounter = TextStyle(
    color: AppColors.accentColor,
    fontSize: 28,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle azkar = TextStyle(
    color: AppColors.white,
    fontSize: 28,
    fontWeight: FontWeight.w400,
  );
}
