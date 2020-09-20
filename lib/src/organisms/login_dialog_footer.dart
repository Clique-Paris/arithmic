import 'package:arithmic/src/atoms/roboto_mono_text.dart';
import 'package:arithmic/src/molecules/colorful_flat_text_button.dart';
import 'package:arithmic/src/services/login_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// widget contains all elements of the login dialog footer
class LoginDialogFooter extends StatelessWidget {
  const LoginDialogFooter({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    LoginService _ls = Provider.of<LoginService>(context, listen: true);
    return Column(
      children: [
        RobotoMonoText((_ls.isNewUser
            ? "Already have an account ?"
            : "Don't have an account yet ?")),
        ColorfulFlatTextButton(
          color: Colors.purple,
          text: (_ls.isNewUser ? "Login" : "Sign up"),
          onPressed: () {
            _ls.changeUserStatus();
          },
        ),
      ],
    );
  }
}
