import 'package:arithmic/src/atoms/close_button.dart';
import 'package:arithmic/src/molecules/help_button.dart';
import 'package:flutter/material.dart' hide CloseButton;

/// Widget contains all elements for the login dialog page's header
class LoginDialogHeader extends StatelessWidget {
  const LoginDialogHeader({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HelpButton(
          message:
              "Multiplayer features like PvP and challanges are reserved to connected players",
        ),
        CloseButton(
          onPressed: () => Navigator.pop(context),
        )
      ],
    );
  }
}
