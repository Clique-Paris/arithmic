import 'package:arithmic/src/atoms/roboto_mono_text.dart';
import 'package:arithmic/src/services/session_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:arithmic/src/structs/game_mode.dart';

/// Widget represents the game mode of the actual game session
class SessionModeTitle extends StatelessWidget {
  const SessionModeTitle({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    SessionService _ss = Provider.of<SessionService>(context, listen: false);
    return RobotoMonoText(_ss.session.mode.value,
        fontWeight: FontWeight.bold, fontSize: 18);
  }
}
