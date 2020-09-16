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
    return GestureDetector(
        onVerticalDragUpdate: (DragUpdateDetails details) {
          onDrag(details.delta.dy);
        },
        child: Container(
          color: Colors.red,
          child: SafeArea(
            child: SettingsPageContent(),
          ),
        ));
  }
}
