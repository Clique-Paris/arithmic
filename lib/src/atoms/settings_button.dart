import 'package:arithmic/src/services/settings_button_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingsButtonService _settingsService =
        Provider.of<SettingsButtonService>(context, listen: true);
    return IconButton(
      icon: Icon(Icons.settings),
      onPressed: () => _settingsService.onClick(),
    );
  }
}
