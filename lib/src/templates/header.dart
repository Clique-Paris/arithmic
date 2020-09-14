import 'package:arithmic/src/services/theme_service.dart';
import 'package:arithmic/src/structs/theme_type.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    themeService = Provider.of<ThemeService>(context, listen: true);

    return SafeArea(
        child: Row(children: [
      IconButton(
        icon: Icon(
          themeService.mode == ThemeType.dark
              ? Icons.wb_sunny
              : Icons.brightness_2,
        ),
        onPressed: () => themeService.changeMode(),
      )
    ]));
  }
}
