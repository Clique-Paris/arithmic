import 'package:arithmic/src/molecules/training_page_buttons_list.dart';
import 'package:arithmic/src/templates/title_with_button_list_template.dart';
import 'package:arithmic/src/templates/sliding_settings_menu_page_scaffold_template.dart';
import 'package:flutter/material.dart';

/// Contains all elements of the training page
class TrainingPage extends StatelessWidget {
  static String routeName = '/training';
  const TrainingPage({
    Key key,
  });
  Widget build(BuildContext context) {
    return SlidingSettingsMenuPageScaffoldTemplate(
        child: TitleWithButtonListTemplate(
            title: "Choose a training subject",
            child: TrainingPageButtonsList()));
  }
}
