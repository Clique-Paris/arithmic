import 'package:arithmic/src/organisms/home_page_content.dart';
import 'package:arithmic/src/templates/sliding_settings_menu_page_scaffold.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/home';

  const HomePage({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return SlidingSettingsMenuPageScaffold(child: HomePageContent());
  }
}
