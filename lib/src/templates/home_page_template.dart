import 'package:arithmic/src/services/settings_button_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageTemplate extends StatefulWidget {
  @override
  _HomePageTemplateState createState() => _HomePageTemplateState();
}

class _HomePageTemplateState extends State<HomePageTemplate> {
  SettingsButtonService _settingsService;
  @override
  Widget build(BuildContext context) {
    _settingsService =
        Provider.of<SettingsButtonService>(context, listen: true);
    return IndexedStack(
      index: (_settingsService.isOpen ? 1 : 0),
      children: [
        // TODO: Change with positioned widgets and add animation
        Column(
          children: [
            Expanded(
              child: Center(
                child: Text('Settings closed'),
              ),
            )
          ],
        ),
        Column(
          children: [
            Expanded(
              child: Center(
                child: Text('Settings open'),
              ),
            )
          ],
        ),
      ],
    );
  }
}
