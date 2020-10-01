import 'package:arithmic/src/organisms/game_play_header_inner_header.dart';
import 'package:arithmic/src/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget contains all layout elements which are present in the inner side of the game play header
class GamePlayHeaderInnerContent extends StatelessWidget {
  const GamePlayHeaderInnerContent({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    Size _deviceSize = MediaQuery.of(context).size;
    ThemeService _ts = Provider.of<ThemeService>(context, listen: true);
    return Container(
        color: _ts.currentTheme.scaffoldBackgroundColor,
        width: _deviceSize.width,
        child: SafeArea(
            child: Column(
          children: [GamePlayHeaderInnerHeader()],
        )));
  }
}
