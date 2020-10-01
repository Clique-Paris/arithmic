import 'package:flutter/material.dart';

/// Widget contains the definition of the settings flow button
class SettingsFlowButton extends StatelessWidget {
  const SettingsFlowButton({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconButton(
      icon: Icon(Icons.settings),
      onPressed: () {
        print('Tapped on game play header settings button');
      },
    );
  }
}
