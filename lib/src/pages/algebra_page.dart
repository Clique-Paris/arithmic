import 'package:arithmic/src/molecules/algebra_option_buttons_list.dart';
import 'package:arithmic/src/services/settings_button_service.dart';
import 'package:arithmic/src/templates/header.dart';
import 'package:arithmic/src/templates/sliding_settings_menu_page_template.dart';
import 'package:arithmic/src/templates/title_with_button_list_template.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget contains all elements for the algebra page
class AlgebraPage extends StatelessWidget {
  static String routeName = "/algebra";
  const AlgebraPage({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    SettingsButtonService _ss =
        Provider.of<SettingsButtonService>(context, listen: true);
    return Scaffold(
        appBar: _ss.isOpen ? null : Header(height: 100),
        body: SlidingSettingsMenuPageTemplate(
          child: TitleWithButtonListTemplate(
              title: "Select a subject in algebra",
              child: AlgebraOptionButtonsList()),
        ));
  }
}
