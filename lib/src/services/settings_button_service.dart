import 'package:flutter/material.dart';

class SettingsButtonService extends ChangeNotifier {
  bool _isSettingsOpen;
  double _top;
  SettingsButtonService() {
    this._isSettingsOpen = false;
    this._top = null;
  }

  void onClick() {
    this._isSettingsOpen = !this._isSettingsOpen;
    this._top = (this._isSettingsOpen ? 0 : null);
    notifyListeners();
  }

  bool get isOpen {
    return this._isSettingsOpen;
  }

  double get top {
    return this._top;
  }

  set top(double t) {
    this._top = (t < 0 ? 0 : t);
    notifyListeners();
  }
}
