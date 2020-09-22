import 'package:arithmic/src/molecules/colorful_flat_text_button.dart';
import 'package:arithmic/src/structs/dfficulty.dart';
import 'package:flutter/material.dart';

/// Widget contains all elements of the choose level page content
class ChooseLevelPageContent extends StatelessWidget {
  final ValueChanged<Difficulty> onClick;
  const ChooseLevelPageContent({
    Key key,
    @required this.onClick,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorfulFlatTextButton(
          color: Colors.blue,
          text: "Beginner",
          onPressed: () => this.onClick(Difficulty.beginner),
        ),
        ColorfulFlatTextButton(
          color: Colors.green,
          text: "Intermediate",
          onPressed: () => this.onClick(Difficulty.intermetidate),
        ),
        ColorfulFlatTextButton(
          color: Colors.yellow,
          text: "Advanced",
          onPressed: () => this.onClick(Difficulty.advanced),
        ),
        ColorfulFlatTextButton(
          color: Colors.red,
          text: "Challenger",
          onPressed: () => this.onClick(Difficulty.challenger),
        )
      ],
    );
  }
}
