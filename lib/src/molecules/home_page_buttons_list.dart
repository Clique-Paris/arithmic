import 'package:arithmic/src/molecules/colorful_flat_text_button.dart';
import 'package:arithmic/src/pages/training_page.dart';
import 'package:arithmic/src/services/session_service.dart';
import 'package:arithmic/src/structs/game_mode.dart';
import 'package:arithmic/src/utils/types.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget contains all buttons on the home page
class HomePageButtonsList extends StatelessWidget {
  final ValueCallback<GameMode> onClick;
  const HomePageButtonsList({Key key, @required this.onClick});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorfulFlatTextButton(
            color: Colors.red,
            text: 'Training',
            onPressed: () {
              this.onClick(GameMode.training);
            }),
        ColorfulFlatTextButton(
          text: 'Adventure',
          color: Colors.yellow,
          onPressed: () => this.onClick(GameMode.adventure),
        ),
        ColorfulFlatTextButton(
            color: Colors.green,
            text: 'Competition',
            onPressed: () {
              this.onClick(GameMode.competition);
            }),
        ColorfulFlatTextButton(
          color: Colors.blue,
          text: 'PvP',
          onPressed: () {
            this.onClick(GameMode.pvp);
          },
        )
      ],
    );
  }
}
