import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_styles.dart';

abstract class CustomTheme {
  static ThemeData lightTheme() => ThemeData(
        primaryColor: AppColors.primaryColorDark,
        highlightColor: AppColors.secondaryColorDark,
        scaffoldBackgroundColor: AppColors.scaffoldColorBright,
        fontFamily: 'Poppins',
        inputDecorationTheme: InputDecorationTheme(
          fillColor: AppColors.primaryColorLight,
          filled: true,
          labelStyle: AppStylesLight.s14,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lowPriority),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColorLight),
          ),
        ),
      );
  static ThemeData darkTheme() => ThemeData(
        primaryColor: AppColors.primaryColorDark,
        highlightColor: AppColors.secondaryColorDark,
        scaffoldBackgroundColor: AppColors.scaffoldColor,
        fontFamily: 'Poppins',
        inputDecorationTheme: InputDecorationTheme(
          fillColor: AppColors.primaryLight,
          filled: true,
          labelStyle: AppStyles.s14,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lowPriority),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColorDark),
          ),
        ),
      );
}
