import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

/// Widget represents the help button which represents the given message once longpressed on it
class HelpButton extends StatelessWidget {
  final String message;
  const HelpButton({Key key, @required this.message});
  @override
  Widget build(BuildContext context) {
    GlobalKey k = GlobalKey();
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          child: Tooltip(
            key: k,
            child: Icon(
              Icons.help_outline,
              size: 24,
            ),
            message: this.message,
          ),
          onTap: () {
            final dynamic tooltip = k.currentState;
            tooltip.ensureTooltipVisible();
            Timer(Duration(seconds: 3), () {
              tooltip.deactivate();
            });
          },
        ));
  }
}
