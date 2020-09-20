import 'package:arithmic/src/molecules/colorful_flat_text_button.dart';
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
          },
        ),
        ColorfulFlatTextButton(
          color: Colors.yellow,
          text: "Power",
          onPressed: () {
            print("Power selected");
          },
        ),
        ColorfulFlatTextButton(
            color: Colors.green,
            text: "Equation solving",
            onPressed: () {
              print('Equation solving selected');
            }),
        ColorfulFlatTextButton(
            color: Colors.blue,
            text: "Surprise me",
            onPressed: () {
              print('All algebra selected');
            }),
      ],
    );
  }
}
