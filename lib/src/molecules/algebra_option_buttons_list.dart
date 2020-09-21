import 'package:arithmic/src/molecules/colorful_flat_text_button.dart';
import 'package:arithmic/src/pages/choose_level_page.dart';
import 'package:flutter/material.dart';

/// Widget contains all option buttons for algebra
class AlgebraOptionButtonsList extends StatelessWidget {
  const AlgebraOptionButtonsList({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorfulFlatTextButton(
          color: Colors.red,
          text: "4 basic operations",
          onPressed: () {
            print('4 basic operations selected');
            Navigator.pushNamed(context, ChooseLevelPage.routeName);
          },
        ),
        ColorfulFlatTextButton(
          color: Colors.yellow,
          text: "Power",
          onPressed: () {
            print("Power selected");
            Navigator.pushNamed(context, ChooseLevelPage.routeName);
          },
        ),
        ColorfulFlatTextButton(
            color: Colors.green,
            text: "Equation solving",
            onPressed: () {
              print('Equation solving selected');
              Navigator.pushNamed(context, ChooseLevelPage.routeName);
            }),
        ColorfulFlatTextButton(
            color: Colors.blue,
            text: "Surprise me",
            onPressed: () {
              print('All algebra selected');
              Navigator.pushNamed(context, ChooseLevelPage.routeName);
            }),
      ],
    );
  }
}
