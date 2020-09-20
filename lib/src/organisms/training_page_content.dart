import 'package:arithmic/src/molecules/colorful_flat_text_button.dart';
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
                child: Text("Training subject:",
                    style: GoogleFonts.robotoMono(fontSize: 24)))),
        Expanded(
          flex: 3,
          child: Column(
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
          ),
        )
      ],
    );
  }
}
