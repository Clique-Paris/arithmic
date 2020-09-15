import 'package:arithmic/src/services/settings_button_service.dart';
import 'package:arithmic/src/templates/header.dart';
import 'package:arithmic/src/templates/home_page_template.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    SettingsButtonService _ss =
        Provider.of<SettingsButtonService>(context, listen: true);
    return Scaffold(
        appBar: _ss.isOpen ? null : Header(height: 100),
        body: HomePageTemplate());
  }
}
