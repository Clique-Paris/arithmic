import 'package:arithmic/src/atoms/colorful_flat_button.dart';
import 'package:arithmic/src/atoms/roboto_mono_text.dart';
import 'package:flutter/material.dart';

/// Widget contains the definition of a colorful button with an icon and text
class ColorfulFlatIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final IconData icon;
  final String text;
  const ColorfulFlatIconButton(
      {Key key,
      @required this.onPressed,
      @required this.color,
      @required this.icon,
      @required this.text});
  @override
  Widget build(BuildContext context) {
    return ColorfulFlatButton(
      child: Row(
        children: [
          Icon(this.icon),
          Expanded(
              child: Center(
                  child: RobotoMonoText(
            this.text,
            fontWeight: FontWeight.bold,
          )))
        ],
      ),
      color: this.color,
      onPressed: this.onPressed,
    );
  }
}
