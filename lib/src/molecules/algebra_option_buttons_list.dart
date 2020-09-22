import 'package:arithmic/src/molecules/colorful_flat_text_button.dart';
import 'package:arithmic/src/pages/choose_level_page.dart';
import 'package:arithmic/src/services/session_service.dart';
import 'package:arithmic/src/structs/sub_category.dart';
import 'package:arithmic/src/utils/types.dart';
import 'package:flutter/material.dart';

/// Widget contains all option buttons for algebra
class AlgebraOptionButtonsList extends StatelessWidget {
  final ValueCallback<SubCategory> onClick;
  const AlgebraOptionButtonsList({Key key, @required this.onClick});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorfulFlatTextButton(
          color: Colors.red,
          text: "4 basic operations",
          onPressed: () => this.onClick(SubCategory.basic_operations),
        ),
        ColorfulFlatTextButton(
          color: Colors.yellow,
          text: "Power",
          onPressed: () => this.onClick(SubCategory.power),
        ),
        ColorfulFlatTextButton(
            color: Colors.green,
            text: "Equation solving",
            onPressed: () => this.onClick(SubCategory.equation_solving)),
        ColorfulFlatTextButton(
            color: Colors.blue,
            text: "Surprise me",
            onPressed: () => this.onClick(SubCategory.random)),
      ],
    );
  }
}
