import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light);

  void toggleTheme(bool isLightTheme) {
    final newThemeMode = isLightTheme ? ThemeMode.light : ThemeMode.dark;
    emit(newThemeMode);

    appColors.loadColor(isLightTheme);
    AppTheme.updateThemes();
    themeNotifier.value = newThemeMode;
  }
}
