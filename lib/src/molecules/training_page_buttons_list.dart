import 'package:arithmic/src/molecules/colorful_flat_text_button.dart';
import 'package:arithmic/src/pages/algebra_page.dart';
import 'package:arithmic/src/pages/choose_level_page.dart';
import 'package:arithmic/src/services/session_service.dart';
import 'package:arithmic/src/structs/category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget contains all buttons in the training page
class TrainingPageButtonsList extends StatelessWidget {
  const TrainingPageButtonsList({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    SessionService _ss = Provider.of<SessionService>(context, listen: true);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ColorfulFlatTextButton(
          color: Colors.red,
          text: 'Algebra',
          onPressed: () {
            _ss.currentCategory = Category.algebra;
            Navigator.pushNamed(context, AlgebraPage.routeName);
          },
        ),
        ColorfulFlatTextButton(
          color: Colors.yellow,
          text: 'Base arithmetics (a.k.a Radix)',
          onPressed: () {
            _ss.currentCategory = Category.radix;
            Navigator.pushNamed(context, ChooseLevelPage.routeName);
          },
        ),
        ColorfulFlatTextButton(
          color: Colors.green,
          text: 'Calculus',
          onPressed: () {
            _ss.currentCategory = Category.calculus;
            //TODO: Add navigation for calculus
          },
        )
      ],
    );
  }
}
