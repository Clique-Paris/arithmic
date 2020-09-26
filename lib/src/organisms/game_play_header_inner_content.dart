import 'package:arithmic/src/atoms/arithmic_logo.dart';
import 'package:arithmic/src/atoms/colored_app_name.dart';
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 2,
                    child: IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {
                        print('Tapped on game play header settings button');
                      },
                    )),
                Expanded(
                    flex: 5,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [ColoredAppName()])),
                Expanded(
                    flex: 2,
                    child: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        print('Pressed on game play header close button');
                      },
                    ))
              ],
            )
          ],
        )));
  }
}
