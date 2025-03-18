import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: appColors.primary1Color,
    scaffoldBackgroundColor: appColors.background1Color,
    appBarTheme: AppBarTheme(
      color: appColors.primary1Color,
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: appColors.neutral1Color),
      bodyMedium: TextStyle(color: appColors.neutral3Color),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: appColors.primary1Color,
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: AppBarTheme(
      color: Colors.grey[900],
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
    ),
  );

  static void updateThemes() {
    lightTheme = lightTheme.copyWith(
      primaryColor: appColors.primary1Color,
      scaffoldBackgroundColor: appColors.background1Color,
      cardColor: appColors.background2Color,
      colorScheme: ColorScheme.light(
        primary: appColors.primary1Color,
        secondary: appColors.secondary1Color,
        surface: appColors.background2Color,
        background: appColors.background1Color,
        error: appColors.red1Color,
      ),
    );

    darkTheme = darkTheme.copyWith(
      primaryColor: appColors.primary1Color,
      scaffoldBackgroundColor: appColors.background1Color,
      cardColor: appColors.background2Color,
      colorScheme: ColorScheme.dark(
        primary: appColors.primary1Color,
        secondary: appColors.secondary1Color,
        surface: appColors.background2Color,
        background: appColors.background1Color,
        error: appColors.red1Color,
      ),
    );
  }
}
