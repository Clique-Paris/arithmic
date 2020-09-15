import 'package:arithmic/src/services/settings_button_service.dart';
import 'package:arithmic/src/templates/settings_page_template.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageTemplate extends StatefulWidget {
  @override
  _HomePageTemplateState createState() => _HomePageTemplateState();
}

class _HomePageTemplateState extends State<HomePageTemplate> {
  SettingsButtonService _settingsService;
  Size deviceSize;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    this.deviceSize = MediaQuery.of(context).size;

    _settingsService =
        Provider.of<SettingsButtonService>(context, listen: true);
    return Stack(
      children: [
        // TODO: Change with positioned widgets and add animation
        Positioned(
            top: 0,
            width: deviceSize.width,
            height: deviceSize.height,
            child: Container(child: Text('THIS IS MAIN PAGE'))),
        AnimatedPositioned(
            width: deviceSize.width,
            height: deviceSize.height,
            duration: Duration(milliseconds: 500),
            top: (_settingsService.isOpen ? 0 : deviceSize.height),
            child: SettingsPageTemplate()),
      ],
    );
  }
}
