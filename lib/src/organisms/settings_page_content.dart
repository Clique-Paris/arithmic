import 'package:arithmic/src/molecules/settings_page_buttons_list.dart';
import 'package:arithmic/src/molecules/settings_page_footer.dart';
import 'package:arithmic/src/molecules/settings_page_header.dart';
import 'package:flutter/material.dart';

/// Widget contains all internal elements of the settings page
class SettingsPageContent extends StatelessWidget {
  const SettingsPageContent({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingsPageHeader(),
        SettingsPageButtonsList(),
        SettingsPageFooter(),
      ],
    );
  }
}
