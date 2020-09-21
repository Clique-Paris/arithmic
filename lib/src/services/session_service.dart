import 'package:arithmic/src/structs/category.dart';
import 'package:arithmic/src/structs/dfficulty.dart';
import 'package:arithmic/src/structs/game_mode.dart';
import 'package:arithmic/src/structs/session.dart';
import 'package:arithmic/src/structs/sub_category.dart';
import 'package:arithmic/src/structs/user.dart';
import 'package:flutter/material.dart';

class SessionService extends ChangeNotifier {
  Session _currentSession;
  GameMode _currentMode;
  Difficulty _currentDifficulty;
  Category _currentCategory;
  SubCategory _currentSubCategory;
  User _currentUser;

  SessionService({@required User user}) {
    this._currentSession = null;
    this._currentMode = null;
    this._currentDifficulty = null;
    this._currentCategory = null;
    this._currentSubCategory = null;
    this._currentUser = user;
  }

  Session get session {
    return this._currentSession;
  }

  GameMode get mode {
    return this._currentMode;
  }

  Difficulty get difficulty {
    return this._currentDifficulty;
  }

  Category get category {
    return this._currentCategory;
  }

  SubCategory get subCategory {
    return this._currentSubCategory;
  }

  User get user {
    return this._currentUser;
  }

  set currentSession(Session s) {
    this._currentSession = s;
    notifyListeners();
  }

  set currentGameMode(GameMode m) {
    this._currentMode = m;
    notifyListeners();
  }

  set currentDifficulty(Difficulty d) {
    this._currentDifficulty = d;
    notifyListeners();
  }

  set currentCategory(Category c) {
    this._currentCategory = c;
    notifyListeners();
  }

  set currentSubCategory(SubCategory sc) {
    this._currentSubCategory = sc;
    notifyListeners();
  }

  set currentUser(User u) {
    this._currentUser = u;
    notifyListeners();
  }
}
