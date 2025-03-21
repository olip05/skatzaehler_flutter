import 'package:app/widgets/GameOverview.dart';
import 'package:app/widgets/MenuButton.dart';
import 'package:app/widgets/MenuCloseButton.dart';
import 'package:flutter/material.dart';

class MenupageView extends StatefulWidget {
  const MenupageView({super.key});

  @override
  State<MenupageView> createState() => _MenupageViewState();
}

class _MenupageViewState extends State<MenupageView> {
  List<String> testGames = [
    "Hallo",
    "Test",
    "Oliver",
    "Hallo",
    "Test",
    "Oliver",
    "Hallo",
    "Test",
    "Oliver",
    "Hallo",
    "Test",
    "Oliver",
    "Hallo",
    "Test",
    "Oliver Plews",
    "Hallo",
    "Test",
    "Oliver",
    "Hallo",
    "Test",
    "Oliver"
  ];
  List<DateTime> testDates = [
    DateTime.parse("2025-03-21 23:25:00"),
    DateTime.parse("2026-11-25 01:45:00"),
    DateTime.parse("2020-02-21 11:56:00"),
    DateTime.parse("2025-03-21 23:25:00"),
    DateTime.parse("2026-11-25 01:45:00"),
    DateTime.parse("2020-02-21 11:56:00"),
    DateTime.parse("2025-03-21 23:25:00"),
    DateTime.parse("2026-11-25 01:45:00"),
    DateTime.parse("2020-02-21 11:56:00"),
    DateTime.parse("2025-03-21 23:25:00"),
    DateTime.parse("2026-11-25 01:45:00"),
    DateTime.parse("2020-02-21 11:56:00"),
    DateTime.parse("2025-03-21 23:25:00"),
    DateTime.parse("2026-11-25 01:45:00"),
    DateTime.parse("2020-02-21 11:56:00"),
    DateTime.parse("2025-03-21 23:25:00"),
    DateTime.parse("2026-11-25 01:45:00"),
    DateTime.parse("2020-02-21 11:56:00"),
    DateTime.parse("2025-03-21 23:25:00"),
    DateTime.parse("2026-11-25 01:45:00"),
    DateTime.parse("2020-02-21 11:56:00"),
    DateTime.parse("2025-03-21 23:25:00"),
    DateTime.parse("2026-11-25 01:45:00"),
    DateTime.parse("2020-02-21 11:56:00")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        MenuCloseButton(onPressed: () {
          //print("Still waiting to be defined");
        }),
      ]),
      Row(children: [
        SizedBox(
          width: 0.5 * MediaQuery.of(context).size.width,
          child:
              TextButton(onPressed: () => {}, child: const Text("Neues Spiel")),
        ),
      ]),
      Row(children: [
        SizedBox(
          width: 0.5 * MediaQuery.of(context).size.width,
          child:
              TextButton(onPressed: () => {}, child: const Text("Statistik")),
        ),
      ]),
      Expanded(
          child: Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 0.5 * MediaQuery.of(context).size.width,
                child: GameOverview(gameNames: testGames, gameDates: testDates),
              )))
    ]));
  }
}
