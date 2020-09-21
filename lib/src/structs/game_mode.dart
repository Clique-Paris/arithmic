enum GameMode { training, competition, pvp }

extension GameModeResolver on GameMode {
  String get value {
    switch (this) {
      case GameMode.training:
        return 'Training';
      case GameMode.competition:
        return 'Competition';
      case GameMode.pvp:
        return 'PvP';
    }
    throw FormatException(this.toString() + ' is not a supported value');
  }
}
