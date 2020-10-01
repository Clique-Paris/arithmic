import 'package:arithmic/src/atoms/close_game_play_header_button.dart';
import 'package:arithmic/src/atoms/colored_app_name.dart';
import 'package:arithmic/src/molecules/settings_flow_button.dart';
import 'package:flutter/material.dart';

/// Widget contains inner header of the game play header widget
class GamePlayHeaderInnerHeader extends StatelessWidget {
  const GamePlayHeaderInnerHeader({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(flex: 2, child: SettingsFlowButton()),
        Expanded(
            flex: 5,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [ColoredAppName()])),
        Expanded(flex: 2, child: CloseGamePlayHeaderButton())
      ],
    );
  }
}
