import 'package:arithmic/src/organisms/settings_page_content.dart';
import 'package:arithmic/src/services/settings_button_service.dart';
import 'package:arithmic/src/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget contains a template declaration for settings page template
class SettingsPageTemplate extends StatefulWidget {
  const SettingsPageTemplate({Key key});

  _SettingsPageTemplateState createState() => _SettingsPageTemplateState();
}

class _SettingsPageTemplateState extends State<SettingsPageTemplate> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeService _ts = Provider.of<ThemeService>(context, listen: true);
    Size deviceSize = MediaQuery.of(context).size;
    SettingsButtonService _settingsService =
        Provider.of<SettingsButtonService>(context, listen: true);

    return GestureDetector(
        onVerticalDragStart: (DragStartDetails details) {},
        onVerticalDragEnd: (DragEndDetails details) {
          if (_settingsService.top < deviceSize.height / 3) {
            _settingsService.top = 0;
          } else {
            _settingsService.onClick();
          }
        },
        onVerticalDragUpdate: (DragUpdateDetails details) {
          _settingsService.top = _settingsService.top + details.delta.dy;
        },
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: SafeArea(
            child: SettingsPageContent(),
          ),
        ));
  }
}
