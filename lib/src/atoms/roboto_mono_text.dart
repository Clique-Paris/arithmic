import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Widgets constructs a Text widget with Roboto mono font type
class RobotoMonoText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Color color;
  final Color backgroundColor;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final double letterSpacing;
  final double wordSpacing;
  final TextBaseline textBaseline;
  final double height;
  final Locale locale;
  final Paint foreground;
  final Paint background;
  final List<Shadow> shadows;
  final List<FontFeature> fontFeatures;
  final TextDecoration decoration;
  final Color decorationColor;
  final TextDecorationStyle decorationStyle;
  final double decorationThickness;
  final TextAlign textAlign;
  const RobotoMonoText(this.text,
      {Key key,
      this.textStyle,
      this.color,
      this.backgroundColor,
      this.fontSize,
      this.fontWeight,
      this.fontStyle,
      this.letterSpacing,
      this.wordSpacing,
      this.textBaseline,
      this.height,
      this.locale,
      this.foreground,
      this.background,
      this.shadows,
      this.fontFeatures,
      this.decoration,
      this.decorationColor,
      this.decorationStyle,
      this.decorationThickness,
      this.textAlign});
  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      textAlign: this.textAlign,
      style: GoogleFonts.robotoMono(
          textStyle: this.textStyle,
          color: this.color,
          backgroundColor: this.backgroundColor,
          fontSize: this.fontSize,
          fontWeight: this.fontWeight,
          fontStyle: this.fontStyle,
          letterSpacing: this.letterSpacing,
          wordSpacing: this.wordSpacing,
          textBaseline: this.textBaseline,
          height: this.height,
          locale: this.locale,
          foreground: this.foreground,
          background: this.background,
          shadows: this.shadows,
          fontFeatures: this.fontFeatures,
          decoration: this.decoration,
          decorationColor: this.decorationColor,
          decorationStyle: this.decorationStyle,
          decorationThickness: this.decorationThickness),
    );
  }
}
