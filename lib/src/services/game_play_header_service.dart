import 'package:flutter/material.dart';

class GamePlayHeaderService extends ChangeNotifier {
  bool _isOpen;

  GamePlayHeaderService() {
    this._isOpen = false;
  }

  bool get open {
    return this._isOpen;
  }

  void change() {
    this._isOpen = !this._isOpen;
    notifyListeners();
  }
}
