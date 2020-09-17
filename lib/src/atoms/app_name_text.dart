import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Widget contains app name text
class AppNameText extends StatelessWidget {
  const AppNameText({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      "Arithmic",
      style: GoogleFonts.robotoMono(textStyle: TextStyle(fontSize: 24)),
    );
  }
}
