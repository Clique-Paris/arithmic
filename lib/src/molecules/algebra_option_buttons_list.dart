import 'package:arithmic/src/molecules/colorful_flat_text_button.dart';
import 'package:arithmic/src/pages/choose_level_page.dart';
import 'package:arithmic/src/services/session_service.dart';
import 'package:arithmic/src/structs/sub_category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget contains all option buttons for algebra
class AlgebraOptionButtonsList extends StatelessWidget {
  const AlgebraOptionButtonsList({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    SessionService _ss = Provider.of<SessionService>(context, listen: true);
    return Column(
      children: [
        ColorfulFlatTextButton(
          color: Colors.red,
          text: "4 basic operations",
          onPressed: () {
            _ss.currentSubCategory = SubCategory.basic_operations;
            Navigator.pushNamed(context, ChooseLevelPage.routeName);
          },
        ),
        ColorfulFlatTextButton(
          color: Colors.yellow,
          text: "Power",
          onPressed: () {
            _ss.currentSubCategory = SubCategory.power;
            Navigator.pushNamed(context, ChooseLevelPage.routeName);
          },
        ),
        ColorfulFlatTextButton(
            color: Colors.green,
            text: "Equation solving",
            onPressed: () {
              _ss.currentSubCategory = SubCategory.equation_solving;
              Navigator.pushNamed(context, ChooseLevelPage.routeName);
            }),
        ColorfulFlatTextButton(
            color: Colors.blue,
            text: "Surprise me",
            onPressed: () {
              _ss.currentSubCategory = SubCategory.random;
              Navigator.pushNamed(context, ChooseLevelPage.routeName);
            }),
      ],
    );
  }
}
