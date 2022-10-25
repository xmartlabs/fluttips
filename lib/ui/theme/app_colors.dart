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

  static const _colorOnPrimary = Color(0xffC7E5F6);
  static const _colorOnSurface = Color(0xff042B59);
  static const _colorWarning = Color(0xffFFD326);

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
        primary: generateMaterialColor(color: Color(0xff042B59)),
        onPrimary: _colorOnPrimary,
        secondary: generateMaterialColor(color: Color(0xff1CDAC5)),
        onSecondary: Colors.white,
        error: generateMaterialColor(color: Color(0xffFF5160)),
        onError: Colors.white,
        onBackground: Colors.black,
        surface: generateMaterialColor(color: Color(0xffE0F4FF)),
        onSurface: _colorOnSurface,
        background: Colors.white,
        tertiary: generateMaterialColor(color: Color(0xff6200EE)),
        onTertiary: Colors.white,
        warning: generateMaterialColor(color: _colorWarning),
        onWarning: Colors.white,
      );
}
