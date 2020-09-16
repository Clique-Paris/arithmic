import 'package:arithmic/src/organisms/settings_page_content.dart';
import 'package:arithmic/src/services/settings_button_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget contains a template declaration for settings page template
class SettingsPageTemplate extends StatelessWidget {
  final ValueChanged<double> onDrag;
  const SettingsPageTemplate({Key key, @required this.onDrag});

  @override
  Widget build(BuildContext context) {
    Offset _posStart, _posEnd;
    Size _deviceSize = MediaQuery.of(context).size;
    SettingsButtonService _settingsButtonService =
        Provider.of<SettingsButtonService>(context, listen: false);
    return GestureDetector(
        onVerticalDragStart: (DragStartDetails details) {
          // _posStart = details.globalPosition;R
        },
        onVerticalDragUpdate: (DragUpdateDetails details) {
          _posEnd = details.globalPosition;
          onDrag(details.delta.dy);
        },
        onVerticalDragEnd: (DragEndDetails details) {
          // if (((_posEnd.dy - _posStart.dy) / _deviceSize.height) > 0.5) {
          //   _settingsButtonService.onClick();
          // }
        },
        child: Container(
          color: Colors.red,
          child: SafeArea(
            child: SettingsPageContent(),
          ),
        ));
  }
}
