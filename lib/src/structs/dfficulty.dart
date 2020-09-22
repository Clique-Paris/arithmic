import 'package:flutter/widgets.dart';

enum Difficulty { beginner, intermetidate, advanced, challenger }

extension DifficultyResolver on Difficulty {
  String get value {
    switch (this) {
      case Difficulty.beginner:
        return 'Beginner';
      case Difficulty.intermetidate:
        return 'Intermediate';
      case Difficulty.advanced:
        return 'Advanced';
      case Difficulty.challenger:
        return 'Challenger';
      default:
        throw FormatException(this.toString() + 'is not a supported value');
    }
  }
}
