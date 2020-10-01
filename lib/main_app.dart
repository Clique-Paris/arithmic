import 'package:arithmic/src/services/theme_service.dart';
import 'package:arithmic/src/utils/router.dart' as CustomRouter;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Main app contains the Material app declaration
class MainApp extends StatelessWidget {
  const MainApp({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    ThemeService _themeService =
        Provider.of<ThemeService>(context, listen: true);
    return MaterialApp(
      theme: _themeService.currentTheme,
      darkTheme: _themeService.darkTheme,
      routes: CustomRouter.Router.routes,
      initialRoute: '/home',
    );
  }
}
