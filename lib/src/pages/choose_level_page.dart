import 'package:arithmic/src/organisms/choose_level_page_content.dart';
import 'package:arithmic/src/templates/sliding_settings_menu_page_scaffold_template.dart';
import 'package:arithmic/src/templates/title_with_button_list_template.dart';
import 'package:flutter/material.dart';

/// widget contains all elements for the choose level page
class ChooseLevePage extends StatelessWidget {
  const ChooseLevePage({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return SlidingSettingsMenuPageScaffoldTemplate(
        child: TitleWithButtonListTemplate(
            title: "Choose your level", child: ChooseLevelPageContent()));
  }
}
