import 'package:arithmic/src/molecules/close_settings_page_button.dart';
import 'package:flutter/material.dart';

/// description
class SettingsPageHeader extends StatelessWidget {
  const SettingsPageHeader({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [CloseSettingsPageButton()],
    );
  }
}
