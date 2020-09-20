import 'package:flutter/material.dart';

/// Widget contains the login button definition
class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle),
      onPressed: () {
        print('Cicked on settings button');
      },
    );
  }
}
