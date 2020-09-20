import 'package:arithmic/src/atoms/colorful_flat_button.dart';
import 'package:arithmic/src/atoms/roboto_mono_text.dart';
import 'package:arithmic/src/molecules/colorful_flat_icon_button.dart';
import 'package:arithmic/src/molecules/colorful_flat_text_button.dart';
import 'package:arithmic/src/services/login_service.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget contains all elements of the login dialogs content
class LoginDialogContent extends StatelessWidget {
  const LoginDialogContent({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    LoginService _ls = Provider.of<LoginService>(context, listen: true);
    String buttonTextPrefix = _ls.isNewUser ? "Sign up" : "Login";
    return Card(
      child: Column(
        children: [
          Column(
            children: [
              ColorfulFlatIconButton(
                color: Colors.blue,
                icon: EvaIcons.facebook,
                text: '$buttonTextPrefix with Facebook',
                onPressed: () {
                  if (_ls.isNewUser) {
                    print("Sign up with facebook");
                  } else {
                    print("Login with facebook");
                  }
                },
              ),
              ColorfulFlatIconButton(
                color: Colors.green,
                icon: EvaIcons.github,
                text: "$buttonTextPrefix with Github",
                onPressed: () {
                  if (_ls.isNewUser) {
                    print("Sign up with github");
                  } else {
                    print("Login with github");
                  }
                },
              ),
              ColorfulFlatIconButton(
                color: Colors.yellow,
                onPressed: () {
                  if (_ls.isNewUser) {
                    print("Sign up with Google");
                  } else {
                    print("Login with Google");
                  }
                },
                icon: EvaIcons.google,
                text: "$buttonTextPrefix with Google",
              ),
              ColorfulFlatIconButton(
                icon: EvaIcons.email,
                color: Colors.red,
                text: "$buttonTextPrefix with email",
                onPressed: () {
                  if (_ls.isNewUser) {
                    print("Sign up with email");
                  } else {
                    print("Login with email");
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
