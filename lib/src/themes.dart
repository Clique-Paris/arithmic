import 'package:flutter/material.dart';

abstract class Themes {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'RobotoMono',
  );

  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.grey[850],
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'RobotoMono',
  );
}
