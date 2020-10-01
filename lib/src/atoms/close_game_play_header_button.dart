import 'package:arithmic/src/services/game_play_header_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget contains the definition of the button that closes the game play header
class CloseGamePlayHeaderButton extends StatelessWidget {
  const CloseGamePlayHeaderButton({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    GamePlayHeaderService _gphs =
        Provider.of<GamePlayHeaderService>(context, listen: true);
    return IconButton(
      icon: Icon(Icons.close),
      onPressed: () {
        _gphs.close();
      },
    );
  }
}
