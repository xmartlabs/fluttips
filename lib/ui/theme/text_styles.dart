import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles extends TextTheme {
  final TextStyle customStyle;

  const AppStyles({
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
        textTheme: GoogleFonts.robotoTextTheme().copyWith(
          displayLarge: _robotoTextStyle(57.sp, FontWeight.w400),
          displayMedium: _robotoTextStyle(45.sp, FontWeight.w400),
          displaySmall: _robotoTextStyle(36.sp, FontWeight.w400),
          headlineLarge: _robotoTextStyle(32.sp, FontWeight.w400),
          headlineMedium: _robotoTextStyle(28, FontWeight.w400),
          headlineSmall: _robotoTextStyle(24, FontWeight.w400),
          titleLarge: _robotoTextStyle(22.sp, FontWeight.w400),
          titleMedium: _robotoTextStyle(16.sp, FontWeight.w500),
          titleSmall: _robotoTextStyle(14.sp, FontWeight.w500),
          labelLarge: _robotoTextStyle(14.sp, FontWeight.w500),
          labelMedium: _robotoTextStyle(12.sp, FontWeight.w500),
          labelSmall: _robotoTextStyle(11.sp, FontWeight.w500),
          bodyLarge: _robotoTextStyle(16.sp, FontWeight.w400),
          bodyMedium: _robotoTextStyle(14.sp, FontWeight.w400),
          bodySmall: _robotoTextStyle(12.sp, FontWeight.w400),
        ),
      );

  static TextStyle _robotoTextStyle(double fontSize, FontWeight fontWeight) =>
      GoogleFonts.roboto(fontSize: fontSize, fontWeight: fontWeight);

  TextTheme getThemeData() => getAppStyles();
}
