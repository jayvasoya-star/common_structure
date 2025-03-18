import 'package:bloc/bloc.dart';

class ThemeCubit extends Cubit<bool> {
  ThemeCubit() : super(true);
   void toggleTheme(bool isLightTheme) {
    emit(isLightTheme);
    appColors.loadColor(isLightTheme);
    AppTheme.updateThemes();
    themeNotifier.value = isLightTheme ? ThemeMode.light : ThemeMode.dark;
  }
}
