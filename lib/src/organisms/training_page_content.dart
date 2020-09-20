import 'package:arithmic/src/atoms/roboto_mono_text.dart';
import 'package:arithmic/src/molecules/training_page_buttons_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        Expanded(
            flex: 2,
            child: Center(
                child:
                    RobotoMonoText("Choose a training subject", fontSize: 24))),
        Expanded(
          flex: 3,
          child: TrainingPageButtonsList(),
        )
      ],
    );
  }
}
