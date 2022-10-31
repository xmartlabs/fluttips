import 'package:flutter/material.dart';
import 'package:material_color_generator/material_color_generator.dart';

// Colors name extracted from https://www.color-name.com
@immutable
class AppColors extends ColorScheme {
  @override
  final Color onPrimary;
  @override
  final MaterialColor primary;
  @override
  final MaterialColor surface;
  @override
  final MaterialColor tertiary;
  final MaterialColor warning;
  final Color onWarning;

  static const _waterColor = Color(0xffC7E5F6);
  static const _prussianBlueColor = Color(0xff042B59);
  static const _sunglowColor = Color(0xffFFD326);
  static const _primaryColors = MaterialColor(0xff042B59, {
    400: Color(0xff2C649B),
    300: Color(0xff5798CD),
    200: Color(0xff93C9EE),
    100: Color(0xffC7E5F6),
  });
  static const _secondaryColors = MaterialColor(
    0xff1CDAC5,
    {
      400: Color(0xff50E8CA),
      300: Color(0xff74F3CE),
    },
  );
  static const _errorColors = MaterialColor(
    0xffFF5160,
    {
      200: Color(0xffFF7D7C),
      300: Color(0xffFFA096),
    },
  );
  static const _tertiaryColors = MaterialColor(0xff6200EE, {
    400: Color(0xff903DF4),
    300: Color(0xffAE63F9),
  });
  static const _warningColors = MaterialColor(
    0xffFFD326,
    {
      300: Color(0xffFFE15C),
      400: Color(0xffFFEA7C),
    },
  );

  AppColors({
    required Brightness brightness,
    required this.primary,
    required this.onPrimary,
    required Color secondary,
    required Color onSecondary,
    required Color error,
    required Color onError,
    required Color background,
    required Color onBackground,
    required this.surface,
    required Color onSurface,
    required this.tertiary,
    required Color onTertiary,
    required this.warning,
    required this.onWarning,
  }) : super(
            brightness: brightness,
            primary: primary,
            onPrimary: onPrimary,
            secondary: secondary,
            onSecondary: onSecondary,
            error: error,
            onError: onError,
            background: background,
            onBackground: onBackground,
            surface: surface,
            onSurface: onSurface,
            tertiary: tertiary,
            onTertiary: onTertiary);

  static AppColors getColorScheme() => AppColors(
        brightness: Brightness.light,
        primary: _primaryColors,
        onPrimary: _waterColor,
        secondary: _secondaryColors,
        onSecondary: Colors.white,
        error: _errorColors,
        onError: Colors.white,
        onBackground: Colors.black,
        surface: generateMaterialColor(color: Color(0xffE0F4FF)),
        onSurface: _prussianBlueColor,
        background: Colors.white,
        tertiary: _tertiaryColors,
        onTertiary: Colors.white,
        warning: _warningColors,
        onWarning: _sunglowColor,
      );
}
