import 'package:flutter/material.dart';

/// Widget shows the button that ends the current game sessionÒ
class EndGameSessionButton extends StatelessWidget {
  const EndGameSessionButton({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.exit_to_app),
      onPressed: () {
        print('Clicked on end of game session button');
      },
    );
  }
}
