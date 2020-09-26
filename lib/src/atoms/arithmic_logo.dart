import 'package:arithmic/src/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget represents the app logo
class ArithmicLogo extends StatelessWidget {
  const ArithmicLogo({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    ThemeService _ts = Provider.of<ThemeService>(context, listen: true);
    return Image.asset(
        _ts.isDarkMode ? 'assets/dark_mode_logo.png' : 'assets/logo.png');
  }
}
