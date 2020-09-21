import 'package:arithmic/src/molecules/algebra_option_buttons_list.dart';
import 'package:arithmic/src/services/settings_button_service.dart';
import 'package:arithmic/src/templates/header.dart';
import 'package:arithmic/src/templates/sliding_settings_menu_page_scaffold_template.dart';
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
    return SlidingSettingsMenuPageScaffoldTemplate(
      child: TitleWithButtonListTemplate(
          title: "Select a subject in algebra",
          child: AlgebraOptionButtonsList()),
    );
  }
}
