import 'package:arithmic/src/molecules/colorful_flat_text_button.dart';
import 'package:arithmic/src/structs/category.dart';
import 'package:arithmic/src/utils/types.dart';
import 'package:flutter/material.dart';

/// Widget contains all buttons in the training page
class TrainingPageButtonsList extends StatelessWidget {
  final ValueCallback<Category> onClick;
  const TrainingPageButtonsList({
    Key key,
    @required this.onClick,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ColorfulFlatTextButton(
          color: Colors.red,
          text: 'Algebra',
          onPressed: () => onClick(Category.algebra),
        ),
        ColorfulFlatTextButton(
          color: Colors.yellow,
          text: 'Base arithmetics (a.k.a Radix)',
          onPressed: () => onClick(Category.radix),
        ),
        ColorfulFlatTextButton(
          color: Colors.green,
          text: 'Calculus',
          onPressed: () => onClick(Category.calculus),
        )
      ],
    );
  }
}
