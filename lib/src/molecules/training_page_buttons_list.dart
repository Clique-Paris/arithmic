import 'package:arithmic/src/molecules/colorful_flat_text_button.dart';
import 'package:flutter/material.dart';

/// Widget contains all buttons in the training page
class TrainingPageButtonsList extends StatelessWidget {
  const TrainingPageButtonsList({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ColorfulFlatTextButton(
          color: Colors.red,
          text: 'Basics of algebra',
          onPressed: () {
            print('Selected basics of algebra');
          },
        ),
        ColorfulFlatTextButton(
          color: Colors.yellow,
          text: 'Base arithmetics (a.k.a Radix)',
          onPressed: () {
            print('Base arithmetics selected as training subject');
          },
        ),
        ColorfulFlatTextButton(
          color: Colors.green,
          text: 'Calculus',
          onPressed: () {
            print('Calculus selected as training subject');
          },
        )
      ],
    );
  }
}
