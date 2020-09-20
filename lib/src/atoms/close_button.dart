import 'package:flutter/material.dart';

/// description
class CloseButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CloseButton({Key key, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return IconButton(icon: Icon(Icons.close), onPressed: onPressed);
  }
}
