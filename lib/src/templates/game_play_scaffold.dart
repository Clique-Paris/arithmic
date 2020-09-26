import 'package:arithmic/src/organisms/game_play_header.dart';
import 'package:arithmic/src/organisms/game_play_question_generator.dart';
import 'package:arithmic/src/services/game_play_header_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget contains all elements for the game play page scaffold
class GamePlayPageScaffold extends StatefulWidget {
  @override
  GamePlayPageScaffoldState createState() => GamePlayPageScaffoldState();
}

class GamePlayPageScaffoldState extends State<GamePlayPageScaffold> {
  double _closedHeaderHeight, _headerDelta, _headerTopPosition;
  @override
  void initState() {
    super.initState();
    _closedHeaderHeight = 100;
    _headerDelta = 0;
    _headerTopPosition = null;
  }

  @override
  Widget build(BuildContext context) {
    Size _deviceSize = MediaQuery.of(context).size;
    GamePlayHeaderService _gps =
        Provider.of<GamePlayHeaderService>(context, listen: true);
    final double _headerBase = -(_deviceSize.height - _closedHeaderHeight);
    print('Device height');
    print(_deviceSize.height);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: _closedHeaderHeight,
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [Expanded(child: GamePlayQuestionGenerator())],
              )),
          AnimatedPositioned(
              height: _deviceSize.height,
              width: _deviceSize.width,
              duration: Duration(milliseconds: 500),
              top: (_headerTopPosition ?? _headerBase),
              child: GamePlayHeader(
                closedHeaderHeight: _closedHeaderHeight,
                onVerticalDrag: (double deltaY) {
                  setState(() {
                    _headerDelta += deltaY;
                    double _t =
                        (_headerTopPosition ?? _headerBase) + _headerDelta;
                    if (_t > 0) {
                      _t = 0;
                    }
                    if (_t < _headerBase) {
                      _t = _headerBase;
                    }
                    _headerTopPosition = _t;
                  });
                },
                onVerticalDragEnd: () {
                  double stopCond = _headerBase * ((_gps.open ? 1 : 2) / 10);
                  if (((_headerDelta < 0 && _gps.open) ||
                          (_headerDelta > 0 && !_gps.open)) &&
                      (_gps.open
                          ? (_headerTopPosition <= stopCond)
                          : (_headerTopPosition >= stopCond))) {
                    _gps.change();
                  }
                  setState(() {
                    _headerTopPosition = (_gps.open ? 0 : _headerBase);
                    _headerDelta = 0;
                  });
                },
              )),
        ],
      ),
    );
  }
}
