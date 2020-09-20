import 'package:arithmic/src/atoms/close_button.dart';
import 'package:arithmic/src/services/settings_button_service.dart';
import 'package:flutter/material.dart' hide CloseButton;
import 'package:provider/provider.dart';

/// Widget represents the button for closing the settings pages
class CloseSettingsPageButton extends StatelessWidget {
  const CloseSettingsPageButton({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    SettingsButtonService _ss =
        Provider.of<SettingsButtonService>(context, listen: false);
    return CloseButton(
      onPressed: () => _ss.onClick(),
    );
  }
}
