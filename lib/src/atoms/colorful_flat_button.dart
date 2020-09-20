import 'package:flutter/material.dart';

/// Widget contains home page button implementation
class ColorfulFlatButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color color;
  final EdgeInsets innerPadding;
  const ColorfulFlatButton(
      {Key key,
      @required this.child,
      @required this.onPressed,
      @required this.color,
      this.innerPadding = const EdgeInsets.symmetric(vertical: 10)});
  @override
  Widget build(BuildContext context) {
    Size _deviceSize = MediaQuery.of(context).size;
    return FlatButton(
      shape: Border.all(color: this.color),
      highlightColor: this.color.withOpacity(0.5),
      splashColor: this.color,
      child: Container(
        padding: this.innerPadding,
        width: _deviceSize.width / 3 * 2,
        child: this.child,
      ),
      onPressed: this.onPressed,
    );
  }
}
