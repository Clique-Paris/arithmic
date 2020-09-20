import 'package:arithmic/src/molecules/change_theme_button.dart';
import 'package:flutter/material.dart';

/// Widget contains all buttons of the settings app
class SettingsPageButtonsList extends StatelessWidget {
  const SettingsPageButtonsList({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ChangeThemeButton()],
      ),
    );
  }
}
