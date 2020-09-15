import 'package:arithmic/src/services/settings_button_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// description
class CloseSettingsPageButton extends StatelessWidget {
  const CloseSettingsPageButton({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    SettingsButtonService _ss =
        Provider.of<SettingsButtonService>(context, listen: false);
    return IconButton(
      icon: Icon(Icons.close),
      onPressed: () => _ss.onClick(),
    );
  }
}
