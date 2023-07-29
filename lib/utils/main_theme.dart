import 'package:flutter/material.dart';

class MainTheme {
  static const MaterialColor mainTheme =
      MaterialColor(_mainThemePrimaryValue, <int, Color>{
    50: Color(0xFFFEEFEA),
    100: Color(0xFFFCD7CB),
    200: Color(0xFFFBBCA9),
    300: Color(0xFFF9A186),
    400: Color(0xFFF78D6C),
    500: Color(_mainThemePrimaryValue),
    600: Color(0xFFF5714B),
    700: Color(0xFFF36641),
    800: Color(0xFFF25C38),
    900: Color(0xFFEF4928),
  });
  static const int _mainThemePrimaryValue = 0xFFF67952;

  static const MaterialColor mainThemeAccent =
      MaterialColor(_mainThemeAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_mainThemeAccentValue),
    400: Color(0xFFFFCEC6),
    700: Color(0xFFFFB9AD),
  });
  static const int _mainThemeAccentValue = 0xFFFFFAF9;
}
