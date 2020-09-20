import 'package:arithmic/src/organisms/login_dialog_content.dart';
import 'package:arithmic/src/organisms/login_dialog_footer.dart';
import 'package:arithmic/src/organisms/login_dialog_header.dart';
import 'package:flutter/material.dart';

/// Widget contains all layout elements for the login dialog template
class LoginDialogTemplate extends StatelessWidget {
  const LoginDialogTemplate({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          LoginDialogHeader(),
          LoginDialogContent(),
          LoginDialogFooter(),
        ],
      ),
    );
  }
}
