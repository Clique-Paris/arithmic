import 'package:arithmic/src/molecules/colorful_flat_icon_button.dart';
import 'package:arithmic/src/molecules/colorful_flat_text_button.dart';
import 'package:flutter/material.dart';

/// Widget contains all elements of the choose level page content
class ChooseLevelPageContent extends StatelessWidget {
  const ChooseLevelPageContent({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorfulFlatTextButton(
          color: Colors.blue,
          text: "Beginner",
          onPressed: () {
            print('Beginner level selected');
          },
        ),
        ColorfulFlatTextButton(
          color: Colors.green,
          text: "Intermediate",
          onPressed: () {
            print('Intermediate level selected');
          },
        ),
        ColorfulFlatTextButton(
          color: Colors.yellow,
          text: "Advanced",
          onPressed: () {
            print('Advanced level selected');
          },
        ),
        ColorfulFlatTextButton(
          color: Colors.red,
          text: "Challenger",
          onPressed: () {
            print('Challenger level selected');
          },
        )
      ],
    );
  }
}
