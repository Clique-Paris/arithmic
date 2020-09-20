import 'package:arithmic/src/services/theme_service.dart';
import 'package:arithmic/src/templates/login_dialog_template.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

/// Widget contains all elements for the login dialog box
class LoginDialog extends StatelessWidget {
  const LoginDialog({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    ThemeService _ts = Provider.of<ThemeService>(context, listen: true);
    return Dialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: Border.all(
          color: _ts.isDarkMode
              ? _ts.lightTheme.scaffoldBackgroundColor
              : _ts.darkTheme.scaffoldBackgroundColor),
      child: LoginDialogTemplate(),
    );
  }
}
