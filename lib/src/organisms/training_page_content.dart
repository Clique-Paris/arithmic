import 'package:arithmic/src/atoms/colorful_flat_button.dart';
import 'package:flutter/material.dart';

/// Widget contains all elements of the training page
class TrainingPageContent extends StatelessWidget {
  const TrainingPageContent({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(child: Text("Training subject:")),
        Column(
          children: [
            ColorfulFlatButton(
              color: Colors.red,
              text: 'Basics of algebra',
              onPressed: () {
                print('Selected basics of algebra');
              },
            ),
            ColorfulFlatButton(
              color: Colors.purple,
              text: 'Base arithmetics (a.k.a Radix)',
              onPressed: () {
                print('Base arithmetics selected as training subject');
              },
            ),
            ColorfulFlatButton(
              color: Colors.blue,
              text: 'Calculus',
              onPressed: () {
                print('Calculus selected as training subject');
              },
            )
          ],
        )
      ],
    );
  }
}
