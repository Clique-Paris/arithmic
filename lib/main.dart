import 'package:arithmic/main_app.dart';
import 'package:arithmic/src/services/theme_service.dart';
import 'package:arithmic/src/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
        create: (context) =>
            ThemeService(darkTheme: Themes.dark, lightTheme: Themes.light))
  ], child: MainApp()));
}
