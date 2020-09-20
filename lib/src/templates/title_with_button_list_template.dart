import 'package:arithmic/src/atoms/roboto_mono_text.dart';
import 'package:flutter/material.dart';

/// Widget contains all elements of the training page
class TitleWithButtonListTemplate extends StatelessWidget {
  final String title;
  final Widget child;
  const TitleWithButtonListTemplate(
      {Key key, @required this.title, @required this.child});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 2, child: Center(child: RobotoMonoText(title, fontSize: 24))),
        Expanded(
          flex: 3,
          child: this.child,
        )
      ],
    );
  }
}
