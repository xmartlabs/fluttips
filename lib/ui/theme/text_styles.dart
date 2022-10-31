import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles extends TextTheme {
  final TextStyle customStyle;

  AppStyles({
    required this.customStyle,
    headlineLarge,
    headlineMedium,
    headlineSmall,
    bodyLarge,
    bodyMedium,
    bodySmall,
    titleLarge,
    titleMedium,
    titleSmall,
    labelLarge,
    labelMedium,
    labelSmall,
    displayLarge,
    displayMedium,
    displaySmall,
  }) : super(
          bodyLarge: bodyLarge,
          headlineMedium: headlineMedium,
          headlineSmall: headlineSmall,
          titleLarge: titleLarge,
          titleMedium: titleMedium,
          titleSmall: titleSmall,
          bodyMedium: bodyMedium,
          bodySmall: bodySmall,
          labelLarge: labelLarge,
          labelSmall: labelSmall,
          displayLarge: displayLarge,
          displayMedium: displayMedium,
          displaySmall: displaySmall,
        );

  factory AppStyles.fromTextTheme({
    required TextStyle customStyle,
    required TextTheme textTheme,
  }) =>
      AppStyles(
        customStyle: customStyle,
        headlineSmall: textTheme.headlineSmall,
        headlineMedium: textTheme.headlineMedium,
        headlineLarge: textTheme.headlineLarge,
        bodyLarge: textTheme.bodyLarge,
        bodyMedium: textTheme.bodyMedium,
        bodySmall: textTheme.bodySmall,
        titleLarge: textTheme.titleLarge,
        titleMedium: textTheme.titleMedium,
        titleSmall: textTheme.titleSmall,
        labelLarge: textTheme.labelLarge,
        labelMedium: textTheme.labelMedium,
        labelSmall: textTheme.labelSmall,
        displayLarge: textTheme.displayLarge,
        displayMedium: textTheme.displayMedium,
        displaySmall: textTheme.displaySmall,
      );

  static AppStyles getAppStyles() => AppStyles.fromTextTheme(
        customStyle: GoogleFonts.inter(
          fontSize: 50.sp,
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.normal,
        ),
        textTheme: GoogleFonts.interTextTheme().copyWith(
          displayLarge: GoogleFonts.roboto(
            fontSize: 57.sp,
            fontWeight: FontWeight.w400,
          ),
          displayMedium: GoogleFonts.roboto(
            fontSize: 45.sp,
            fontWeight: FontWeight.w400,
          ),
          displaySmall: GoogleFonts.roboto(
            fontSize: 36.sp,
            fontWeight: FontWeight.w400,
          ),
          headlineLarge: GoogleFonts.roboto(
            fontSize: 32.sp,
            fontWeight: FontWeight.w400,
          ),
          headlineMedium: GoogleFonts.roboto(
            fontSize: 28,
            fontWeight: FontWeight.w400,
          ),
          headlineSmall: GoogleFonts.roboto(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
          titleLarge: GoogleFonts.roboto(
            fontSize: 22.sp,
            fontWeight: FontWeight.w400,
          ),
          titleMedium: GoogleFonts.roboto(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
          titleSmall: GoogleFonts.roboto(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          labelLarge: GoogleFonts.roboto(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          labelMedium: GoogleFonts.roboto(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
          labelSmall: GoogleFonts.roboto(
            fontSize: 11.sp,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: GoogleFonts.roboto(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            height: 1.sp,
          ),
          bodyMedium: GoogleFonts.roboto(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: GoogleFonts.roboto(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      );

  TextTheme getThemeData() => getAppStyles();
}
