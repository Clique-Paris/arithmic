import 'package:arithmic/src/templates/game_play_scaffold.dart';
import 'package:flutter/material.dart';

/// Widget contains all elements of the game play page
class GamePlayPage extends StatelessWidget {
  static String routeName = '/game';
  const GamePlayPage({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return GamePlayPageScaffold();
  }
}
