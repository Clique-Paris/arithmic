import 'package:arithmic/src/organisms/choose_level_page_content.dart';
import 'package:arithmic/src/services/session_service.dart';
import 'package:arithmic/src/structs/dfficulty.dart';
import 'package:arithmic/src/templates/sliding_settings_menu_page_scaffold.dart';
import 'package:arithmic/src/templates/title_with_button_list_template.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// widget contains all elements for the choose level page
class ChooseLevelPage extends StatelessWidget {
  static String routeName = "/choose-level";
  const ChooseLevelPage({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    SessionService _ss = Provider.of<SessionService>(context, listen: true);
    return SlidingSettingsMenuPageScaffold(
        child: TitleWithButtonListTemplate(
            title: "Choose your level",
            child: ChooseLevelPageContent(
              onClick: (Difficulty d) {
                _ss.currentDifficulty = d;
                // TODO: Add navigation
                // Navigator.pushNamed(context, routeName);
              },
            )));
  }
}
