import 'package:arithmic/src/organisms/home_page_content.dart';
import 'package:arithmic/src/services/settings_button_service.dart';
import 'package:arithmic/src/templates/settings_page_template.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SlidingSettingsMenuPageTemplate extends StatefulWidget {
  final Widget child;

  const SlidingSettingsMenuPageTemplate({
    Key key,
    @required this.child,
  });

  @override
  _SlidingSettingsMenuPageTemplateState createState() =>
      _SlidingSettingsMenuPageTemplateState();
}

class _SlidingSettingsMenuPageTemplateState
    extends State<SlidingSettingsMenuPageTemplate> {
  SettingsButtonService _settingsService;
  Size deviceSize;
  double delta;
  @override
  void initState() {
    super.initState();
    delta = 0;
  }

  @override
  Widget build(BuildContext context) {
    this.deviceSize = MediaQuery.of(context).size;

    _settingsService =
        Provider.of<SettingsButtonService>(context, listen: true);
    if (_settingsService.isOpen == false) {
      this.delta = 0;
    }
    return Stack(
      children: [
        Positioned(
            top: 0,
            width: deviceSize.width,
            height: deviceSize.height,
            child: widget.child),
        AnimatedPositioned(
            width: deviceSize.width,
            height: deviceSize.height,
            duration: Duration(milliseconds: 500),
            top: (_settingsService.isOpen ? delta : deviceSize.height),
            child: SettingsPageTemplate(
              onDrag: (double d) {
                setState(() {
                  delta = (delta + d < 0) ? 0 : delta + d;
                  if (delta > (this.deviceSize.height / 3)) {
                    _settingsService.onClick();
                  }
                });
              },
            )),
      ],
    );
  }
}
