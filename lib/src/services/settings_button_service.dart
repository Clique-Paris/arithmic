import 'package:flutter/material.dart';

class SettingsButtonService extends ChangeNotifier {
  bool _isSettingsOpen;

  SettingsButtonService() {
    this._isSettingsOpen = false;
  }

  void onClick() {
    this._isSettingsOpen = !this._isSettingsOpen;
    notifyListeners();
  }

  bool get isOpen {
    return this._isSettingsOpen;
  }
}
