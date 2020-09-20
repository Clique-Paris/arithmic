import 'package:arithmic/src/structs/theme_type.dart';
import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {
  ThemeData currentTheme;
  final ThemeData lightTheme;
  final ThemeData darkTheme;
  // Initialize the current theme of the app
  ThemeService(
      {@required this.lightTheme,
      @required this.darkTheme,
      ThemeType defaultTheme}) {
    switch (defaultTheme) {
      case ThemeType.dark:
        this.currentTheme = darkTheme;
        break;
      case ThemeType.light:
        this.currentTheme = lightTheme;
        break;
      default:
        this.currentTheme = lightTheme;
        break;
    }
  }

  bool get isDarkMode {
    return this.currentTheme.brightness == Brightness.dark;
  }

  bool get isLightMode {
    return this.currentTheme.brightness == Brightness.light;
  }

  void darkMode() {
    this.currentTheme = darkTheme;
    notifyListeners();
  }

  void lightMode() {
    this.currentTheme = lightTheme;
    notifyListeners();
  }

  void changeMode() {
    if (this.mode == ThemeType.dark) {
      this.currentTheme = lightTheme;
    } else {
      this.currentTheme = darkTheme;
    }
    notifyListeners();
  }

  ThemeType get mode {
    return (currentTheme.brightness == Brightness.dark
        ? ThemeType.dark
        : ThemeType.light);
  }
}
