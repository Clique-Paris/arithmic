import 'package:arithmic/src/atoms/change_theme_button.dart';
import 'package:arithmic/src/atoms/settings_button.dart';
import 'package:arithmic/src/services/theme_service.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  final double height;

  const Header({Key key, @required this.height});

  @override
  _HeaderState createState() => _HeaderState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _HeaderState extends State<Header> {
  ThemeService themeService;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [SettingsButton(), ChangeThemeButton()]));
  }
}
