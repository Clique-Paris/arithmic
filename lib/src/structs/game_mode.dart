import 'package:arithmic/src/pages/training_page.dart';
import 'package:flutter/material.dart';

enum GameMode { training, competition, adventure, pvp }

extension GameModeResolver on GameMode {
  String get value {
    switch (this) {
      case GameMode.training:
        return 'Training';
      case GameMode.competition:
        return 'Competition';
      case GameMode.adventure:
        return 'Adventure';
      case GameMode.pvp:
        return 'PvP';
    }
    throw FormatException(this.toString() + ' is not a supported value');
  }

  Future<dynamic> navigate(BuildContext context) {
    switch (this) {
      case GameMode.training:
        return Navigator.pushNamed(context, TrainingPage.routeName);
      case GameMode.competition:
        throw UnimplementedError(
            "Competition page navigation has not yet implemented");
      case GameMode.adventure:
        throw UnimplementedError(
            "Adventure page navigation has not yet implemented");
      case GameMode.pvp:
        throw UnimplementedError("Pvp page navigation has not yet implemented");
    }
    throw FormatException(this.toString() + ' is not a valid value');
  }
}
