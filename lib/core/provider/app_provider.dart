import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String currentLanguage = "en";
  ThemeMode currentTheme = ThemeMode.light;

  changeTheme(ThemeMode newMode) {
    if (currentTheme == newMode) return;

    currentTheme = newMode;
    notifyListeners();
  }

  changeLanguage(String newLanguage) {
    if (currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;
    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  String getBackgroundImage() {
    return isDark()
        ? "assets/images/background_dark.png"
        : "assets/images/background_light.png";
  }
}
