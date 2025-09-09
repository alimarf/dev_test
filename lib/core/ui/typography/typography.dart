import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/colors.dart';

mixin AppTypography {
  // LIGHT THEME TEXT
  static TextTheme lightTextTheme = GoogleFonts.robotoTextTheme(
    TextTheme(
      labelLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0.1,
        color: AppColors.black,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        letterSpacing: 0.5,
        color: AppColors.black,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 11,
        letterSpacing: 0.5,
        color: AppColors.black,
      ),
      bodyLarge: TextStyle(
          color: AppColors.black,
          fontSize: 16,
          letterSpacing: 0.15,
          fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(
          color: AppColors.black,
          fontSize: 14,
          letterSpacing: 0.25,
          fontWeight: FontWeight.w400),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.4,
        color: AppColors.black,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 22,
        letterSpacing: 0,
        color: AppColors.black,
      ),
      titleMedium: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          letterSpacing: 0.15,
          color: AppColors.black),
      titleSmall: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 0.1,
          color: AppColors.black),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 32,
        letterSpacing: 0,
        color: AppColors.black,
      ),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 28,
          letterSpacing: 0,
          color: AppColors.black),
      headlineSmall: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24,
          letterSpacing: 0,
          color: AppColors.black),
    ),
  );

  // DARK THEME TEXT
  static TextTheme darkTextTheme = GoogleFonts.robotoTextTheme(
    const TextTheme(
      labelLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0.1,
        color: AppColors.white,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        letterSpacing: 0.5,
        color: AppColors.white,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 11,
        letterSpacing: 0.5,
        color: AppColors.white,
      ),
      bodyLarge: TextStyle(
          color: AppColors.white,
          fontSize: 16,
          letterSpacing: 0.15,
          fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(
          color: AppColors.white,
          fontSize: 14,
          letterSpacing: 0.25,
          fontWeight: FontWeight.w400),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.4,
        color: AppColors.white,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 22,
        letterSpacing: 0,
        color: AppColors.white,
      ),
      titleMedium: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          letterSpacing: 0.15,
          color: AppColors.white),
      titleSmall: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 0.1,
          color: AppColors.white),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 32,
        letterSpacing: 0,
        color: AppColors.white,
      ),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 28,
          letterSpacing: 0,
          color: AppColors.white),
      headlineSmall: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24,
          letterSpacing: 0,
          color: AppColors.white),
    ),
  );
}
