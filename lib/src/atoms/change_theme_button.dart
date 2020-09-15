import 'package:arithmic/src/services/theme_service.dart';
import 'package:arithmic/src/structs/theme_type.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeThemeButton extends StatefulWidget {
  @override
  _ChangeThemeButtonState createState() => _ChangeThemeButtonState();
}

class _ChangeThemeButtonState extends State<ChangeThemeButton> {
  ThemeService _themeService;
  @override
  Widget build(BuildContext context) {
    _themeService = Provider.of<ThemeService>(context, listen: true);

    return IconButton(
      icon: Icon(
        _themeService.mode == ThemeType.dark
            ? Icons.wb_sunny
            : Icons.brightness_2,
      ),
      onPressed: () => _themeService.changeMode(),
    );
  }
}
