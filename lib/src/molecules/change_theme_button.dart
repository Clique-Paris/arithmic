import 'package:arithmic/src/atoms/colorful_flat_button.dart';
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

    return ColorfulFlatButton(
      child: Row(
        children: [
          Icon(
            _themeService.isDarkMode ? Icons.wb_sunny : Icons.brightness_2,
          ),
          Expanded(
              child: Text(
            "${_themeService.isDarkMode ? 'Light' : 'Dark'} mode",
            textAlign: TextAlign.center,
          ))
        ],
      ),
      onPressed: () => _themeService.changeMode(),
      color: _themeService.isDarkMode
          ? _themeService.lightTheme.backgroundColor
          : _themeService.darkTheme.backgroundColor,
    );
  }
}
