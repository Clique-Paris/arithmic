import 'package:arithmic/src/atoms/end_game_session_button.dart';
import 'package:arithmic/src/atoms/score_board.dart';
import 'package:arithmic/src/atoms/session_mode_title.dart';
import 'package:arithmic/src/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget contains all elements of the Game play header outer content
class GamePlayHeaderOuterContent extends StatelessWidget {
  final double closedHeaderHeight;
  const GamePlayHeaderOuterContent(
      {Key key, @required this.closedHeaderHeight});
  @override
  Widget build(BuildContext context) {
    ThemeService _ts = Provider.of<ThemeService>(context, listen: true);
    return Container(
        // color: _ts.currentTheme.scaffoldBackgroundColor,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: _ts.isDarkMode
              ? _ts.lightTheme.scaffoldBackgroundColor
              : _ts.darkTheme.scaffoldBackgroundColor,
        ))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex: 2, child: Container(child: SessionModeTitle())),
            Expanded(
                flex: 5,
                child: Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [ScoreBoard()]))),
            Expanded(flex: 2, child: Container(child: EndGameSessionButton())),
          ],
        ));
  }
}
