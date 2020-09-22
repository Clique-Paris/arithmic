import 'package:arithmic/src/molecules/home_page_buttons_list.dart';
import 'package:arithmic/src/services/session_service.dart';
import 'package:arithmic/src/services/theme_service.dart';
import 'package:arithmic/src/structs/game_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// widget contains all internal elements of the home page
class HomePageContent extends StatelessWidget {
  const HomePageContent({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    ThemeService _ts = Provider.of<ThemeService>(context, listen: true);
    SessionService _ss = Provider.of<SessionService>(context, listen: true);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: Image.asset(_ts.isDarkMode
                ? 'assets/dark_mode_logo.png'
                : 'assets/logo.png')),
        HomePageButtonsList(onClick: (GameMode m) {
          _ss.currentGameMode = m;
          m.navigate(context);
        }),
      ],
    );
  }
}
