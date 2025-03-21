import 'package:app/widgets/ItemTile.dart';
import 'package:app/widgets/ScrollableWidgetFrame.dart';
import 'package:flutter/material.dart';

class GameOverview extends StatefulWidget {
  final List<String> gameNames;
  final List<DateTime> gameDates;

  const GameOverview(
      {super.key, required this.gameNames, required this.gameDates});

  List<Widget> createGamesContainers(
      List<String> gameNames, List<DateTime> gameDates) {
    List<Widget> ret = [];
    for (int i = 0; i < gameNames.length; i++) {
      ret.add(ItemTile(title: gameNames[i], dateTime: gameDates[i]));
    }
    return ret;
  }

  @override
  State<GameOverview> createState() => _GameOverviewState();
}

class _GameOverviewState extends State<GameOverview> {
  @override
  Widget build(BuildContext context) {
    return ScrollableWidgetFrame(
        width: 1,
        height: 1,
        child: Column(
            children: widget.createGamesContainers(
                widget.gameNames, widget.gameDates)));
  }
}
