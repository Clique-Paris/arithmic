import 'package:flutter/material.dart';

/// Widget represents the help button which represents the given message once longpressed on it
class HelpButton extends StatelessWidget {
  final String message;
  const HelpButton({Key key, @required this.message});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Tooltip(
          child: Icon(
            Icons.help_outline,
            size: 24,
          ),
          message: this.message,
        ));
  }
}
