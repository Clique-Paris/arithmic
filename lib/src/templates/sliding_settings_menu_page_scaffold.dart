import 'package:arithmic/src/services/settings_button_service.dart';
import 'package:arithmic/src/templates/header.dart';
import 'package:arithmic/src/templates/settings_page_template.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SlidingSettingsMenuPageScaffold extends StatefulWidget {
  final Widget child;

  const SlidingSettingsMenuPageScaffold({
    Key key,
    @required this.child,
  });

  @override
  _SlidingSettingsMenuPageScaffoldState createState() =>
      _SlidingSettingsMenuPageScaffoldState();
}

class _SlidingSettingsMenuPageScaffoldState
    extends State<SlidingSettingsMenuPageScaffold> {
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
    return Scaffold(
        appBar: _settingsService.isOpen ? null : Header(height: 100),
        body: Stack(
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
                top: _settingsService.top ?? deviceSize.height,
                child: SettingsPageTemplate()),
          ],
        ));
  }
}
