import 'package:arithmic/src/atoms/colorful_flat_button.dart';
import 'package:arithmic/src/pages/training_page.dart';
import 'package:flutter/material.dart';

/// Widget contains all buttons on the home page
class HomePageButtonsList extends StatelessWidget {
  const HomePageButtonsList({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorfulFlatButton(
            color: Colors.red,
            text: 'Training',
            onPressed: () {
              Navigator.pushNamed(context, TrainingPage.routeName);
            }),
        ColorfulFlatButton(
            color: Colors.yellow,
            text: 'Competition',
            onPressed: () {
              print('Competition mode selected');
            }),
        ColorfulFlatButton(
          color: Colors.orange,
          text: 'PvP',
          onPressed: () {
            print('PvP mode selected');
          },
        )
      ],
    );
  }
}
