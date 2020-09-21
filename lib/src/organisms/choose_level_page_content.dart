import 'package:arithmic/src/molecules/colorful_flat_icon_button.dart';
import 'package:arithmic/src/molecules/colorful_flat_text_button.dart';
import 'package:arithmic/src/services/session_service.dart';
import 'package:arithmic/src/structs/dfficulty.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget contains all elements of the choose level page content
class ChooseLevelPageContent extends StatelessWidget {
  const ChooseLevelPageContent({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    SessionService _ss = Provider.of<SessionService>(context, listen: true);
    // Refactor these buttons
    return Column(
      children: [
        ColorfulFlatTextButton(
          color: Colors.blue,
          text: "Beginner",
          onPressed: () {
            _ss.currentDifficulty = Difficulty.beginner;
            print('Beginner level selected');
          },
        ),
        ColorfulFlatTextButton(
          color: Colors.green,
          text: "Intermediate",
          onPressed: () {
            _ss.currentDifficulty = Difficulty.intermetidate;
            print('Intermediate level selected');
          },
        ),
        ColorfulFlatTextButton(
          color: Colors.yellow,
          text: "Advanced",
          onPressed: () {
            _ss.currentDifficulty = Difficulty.advanced;
            print('Advanced level selected');
          },
        ),
        ColorfulFlatTextButton(
          color: Colors.red,
          text: "Challenger",
          onPressed: () {
            _ss.currentDifficulty = Difficulty.challenger;
            print('Challenger level selected');
          },
        )
      ],
    );
  }
}
