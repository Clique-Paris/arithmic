import 'package:flutter/material.dart';

class LoginService extends ChangeNotifier {
  bool _newUser = false;

  bool get isNewUser {
    return this._newUser;
  }

  void changeUserStatus() {
    this._newUser = !this._newUser;
    notifyListeners();
  }
}
