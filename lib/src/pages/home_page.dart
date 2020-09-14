import 'package:arithmic/src/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    ThemeService _themeService =
        Provider.of<ThemeService>(context, listen: true);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Center(
            child: FlatButton(
              child: Text('Change theme'),
              onPressed: () => _themeService.changeMode(),
            ),
          ))
        ],
      ),
    );
  }
}
