import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Widget shows the app name with colors
class ColoredAppName extends StatelessWidget {
  final double fontSize;
  const ColoredAppName({
    Key key,
    this.fontSize = 24,
  });
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: "A",
          style: GoogleFonts.robotoMono(
              color: Colors.blue, fontSize: this.fontSize)),
      TextSpan(
          text: "r",
          style: GoogleFonts.robotoMono(
              color: Colors.green, fontSize: this.fontSize)),
      TextSpan(
          text: "i",
          style: GoogleFonts.robotoMono(
              color: Colors.yellow, fontSize: this.fontSize)),
      TextSpan(
          text: "t",
          style: GoogleFonts.robotoMono(
              color: Colors.red, fontSize: this.fontSize)),
      TextSpan(
          text: "h",
          style: GoogleFonts.robotoMono(
              color: Colors.red, fontSize: this.fontSize)),
      TextSpan(
          text: "m",
          style: GoogleFonts.robotoMono(
              color: Colors.yellow, fontSize: this.fontSize)),
      TextSpan(
          text: "i",
          style: GoogleFonts.robotoMono(
              color: Colors.green, fontSize: this.fontSize)),
      TextSpan(
          text: "c",
          style: GoogleFonts.robotoMono(
              color: Colors.blue, fontSize: this.fontSize)),
    ]));
  }
}
