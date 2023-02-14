import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;
  ThemeProvider({required bool isDarkMode})
      : currentTheme = isDarkMode
            ? ThemeData.dark(useMaterial3: true)
            : ThemeData.light(useMaterial3: true);

  setLightMode() {
    currentTheme = ThemeData.light(useMaterial3: true);
    notifyListeners();
  }

  setDarkMode() {
    currentTheme = ThemeData.dark(useMaterial3: true);
    notifyListeners();
  }
}
