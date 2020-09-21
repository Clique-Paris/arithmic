import 'package:arithmic/src/molecules/colorful_flat_text_button.dart';
import 'package:arithmic/src/pages/training_page.dart';
import 'package:arithmic/src/services/session_service.dart';
import 'package:arithmic/src/structs/game_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget contains all buttons on the home page
class HomePageButtonsList extends StatelessWidget {
  const HomePageButtonsList({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    SessionService _ss = Provider.of<SessionService>(context, listen: true);
    return Column(
      children: [
        ColorfulFlatTextButton(
            color: Colors.red,
            text: 'Training',
            onPressed: () {
              _ss.currentGameMode = GameMode.training;
              Navigator.pushNamed(context, TrainingPage.routeName);
            }),
        ColorfulFlatTextButton(
            color: Colors.yellow,
            text: 'Competition',
            onPressed: () {
              print('Competition mode selected');
            }),
        ColorfulFlatTextButton(
          color: Colors.green,
          text: 'PvP',
          onPressed: () {
            print('PvP mode selected');
          },
        )
      ],
    );
  }
}
