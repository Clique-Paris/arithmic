import 'package:arithmic/src/atoms/roboto_mono_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Footer section of the settings page
class SettingsPageFooter extends StatelessWidget {
  const SettingsPageFooter({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RobotoMonoText(
          '© 2020 Makepad All rights reserved',
        )
      ],
    );
  }
}
