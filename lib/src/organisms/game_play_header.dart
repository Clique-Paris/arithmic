import 'package:arithmic/src/organisms/game_play_header_inner_content.dart';
import 'package:arithmic/src/organisms/game_play_header_outer_content.dart';
import 'package:flutter/material.dart';

/// Header of the game play page
class GamePlayHeader extends StatelessWidget {
  final double closedHeaderHeight;
  final ValueChanged<double> onVerticalDrag;
  final VoidCallback onVerticalDragEnd;
  const GamePlayHeader(
      {Key key,
      @required this.closedHeaderHeight,
      @required this.onVerticalDrag,
      @required this.onVerticalDragEnd});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onVerticalDragUpdate: (DragUpdateDetails details) {
          this.onVerticalDrag((details.primaryDelta < 0
              ? details.primaryDelta
              : details.primaryDelta));
        },
        onVerticalDragEnd: (DragEndDetails _) {
          this.onVerticalDragEnd();
        },
        child: Column(
          children: [
            Expanded(
              child: GamePlayHeaderInnerContent(),
            ),
            GamePlayHeaderOuterContent(closedHeaderHeight: closedHeaderHeight),
          ],
        ));
  }
}
