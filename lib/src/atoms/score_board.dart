import 'package:arithmic/src/atoms/roboto_mono_text.dart';
import 'package:flutter/material.dart';

/// Widget shows the score of the current session
class ScoreBoard extends StatelessWidget {
  const ScoreBoard({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RobotoMonoText(
          '0',
          color: Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        RobotoMonoText('|'),
        RobotoMonoText(
          '0',
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        )
      ],
    );
  }
}
