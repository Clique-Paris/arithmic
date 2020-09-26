import 'package:arithmic/src/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget contains the question and answer part of the game play page
class GamePlayQuestionGenerator extends StatelessWidget {
  const GamePlayQuestionGenerator({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    Size _deviceSize = MediaQuery.of(context).size;
    ThemeService _ts = Provider.of<ThemeService>(context, listen: true);
    return Container(
        width: _deviceSize.width,
        color: _ts.currentTheme.scaffoldBackgroundColor,
        child: Text('HELLO !!'));
  }
}
