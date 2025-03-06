import 'package:app/homepage/CenteredTable.dart';
import 'package:app/homepage/MenuButton.dart';
import 'package:app/homepage/SelectionButtonRow.dart';
import 'package:flutter/material.dart';

class HomepageView extends StatefulWidget {
  const HomepageView({super.key});

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  final String title = "";
  List<List<int>> testPoints = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ];

  final String player = "Spieler1";
  final String verhalten = "gewinnt";

  int dummy() {
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              MenuButton(onPressed: () {
                print("Still waiting to be defined");
              }),
            ]),
            const Text("Game title goes here"),
            CenteredTable(values: testPoints),
            Column(
              children: [
                SelectionButtonRow(
                    rowName: "Einzelspieler",
                    labels: ["Spieler1", "Spieler2", "Spieler3"],
                    onChanged: (newValue) {
                      print("Still waiting to be defined");
                    }),
                SelectionButtonRow(
                    rowName: "mit/ohne",
                    labels: ["Null", "1", "2", "3", "4", "Grand"],
                    onChanged: (newValue) {
                      print("Still waiting to be defined");
                    }),
                SelectionButtonRow(
                    rowName: "Farbe",
                    labels: ["Schell", "Rot", "Grün", "Eichel"],
                    onChanged: (newValue) {
                      print("Still waiting to be defined");
                    }),
                SelectionButtonRow(
                    rowName: "",
                    labels: ["Ouvert", "Hand"],
                    onChanged: (newValue) {
                      print("Still waiting to be defined");
                    }),
                SelectionButtonRow(
                    rowName: "",
                    labels: ["Schneider", "Angesagt", "Schwarz", "Angesagt"],
                    onChanged: (newValue) {
                      print("Still waiting to be defined");
                    }),
                SelectionButtonRow(
                    rowName: "Spielausgang",
                    labels: ["Sieg", "Niederlage"],
                    onChanged: (newValue) {
                      print("Still waiting to be defined");
                    }),
                SelectionButtonRow(
                    rowName: "",
                    labels: ["Kontra", "Re"],
                    onChanged: (newValue) {
                      print("Still waiting to be defined");
                    }),
                Text("$player $verhalten ${dummy()} Punkte"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: dummy, child: const Text("Hinzufügen")),
                    TextButton(onPressed: dummy, child: const Text("Löschen"))
                  ],
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(destinations: const [
          Text("TestDestination"),
          Text("Destination2")
        ]));
  }
}
