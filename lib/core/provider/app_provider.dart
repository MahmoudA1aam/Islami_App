import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  var currentLanguage = "ar";

  changeLanguage(String newLanguage) {
    if (currentLanguage == newLanguage) {
      return;
    } else {
      currentLanguage = newLanguage;
    }
    notifyListeners();
  }

  changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) {
      return;
    } else {
      currentTheme = newTheme;
    }
    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }
}
