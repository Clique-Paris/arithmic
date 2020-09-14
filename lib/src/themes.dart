import 'package:flutter/material.dart';

abstract class Themes {
  static final ThemeData light =
      ThemeData(brightness: Brightness.light, primaryColor: Colors.purple);

  static final ThemeData dark =
      ThemeData(brightness: Brightness.dark, primaryColor: Colors.yellow);
}
