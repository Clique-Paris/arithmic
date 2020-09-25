import 'package:arithmic/src/molecules/algebra_option_buttons_list.dart';
import 'package:arithmic/src/pages/choose_level_page.dart';
import 'package:arithmic/src/services/session_service.dart';
import 'package:arithmic/src/services/settings_button_service.dart';
import 'package:arithmic/src/structs/sub_category.dart';
import 'package:arithmic/src/templates/sliding_settings_menu_page_scaffold.dart';
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
    SessionService _ss = Provider.of<SessionService>(context, listen: true);
    return SlidingSettingsMenuPageScaffold(
      child: TitleWithButtonListTemplate(
          title: "Select a subject in algebra",
          child: AlgebraOptionButtonsList(
            onClick: (SubCategory sc) {
              _ss.currentSubCategory = sc;
              Navigator.pushNamed(context, ChooseLevelPage.routeName);
            },
          )),
    );
  }
}
