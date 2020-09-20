import 'package:arithmic/src/atoms/colorful_flat_button.dart';
import 'package:arithmic/src/atoms/roboto_mono_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Widget contains home page button implementation
class ColorfulFlatTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final EdgeInsets innerPadding;
  const ColorfulFlatTextButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      @required this.color,
      this.innerPadding = const EdgeInsets.symmetric(vertical: 10)});
  @override
  Widget build(BuildContext context) {
    return ColorfulFlatButton(
        child: Center(child: RobotoMonoText(this.text)),
        onPressed: this.onPressed,
        color: this.color);
  }
}
