import 'package:app/homepage/CenteredTable.dart';
import 'package:app/homepage/MenuButton.dart';
import 'package:app/homepage/RotatingWidgetRow.dart';
import 'package:app/homepage/ScrollableWidgetFrame.dart';
import 'package:app/homepage/SelectionButtonRow.dart';
import 'package:flutter/material.dart';

class HomepageView extends StatefulWidget {
  const HomepageView({super.key});

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  late Function rotateFunction;
  final String title = "";
  List<List<int>> testPoints = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ];
  List<String> testHeadings = [
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell",
    "2x Rot",
    "4x Grün Hand",
    "1x Schell"
  ];

  String player = "";
  final String verhalten = "gewinnt";

  int dummy() {
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          MenuButton(onPressed: () {
            //print("Still waiting to be defined");
          }),
        ]),
        const Text("Game title goes here"),
        Expanded(
            child: ScrollableWidgetFrame(
                width: 1.0,
                height: 1.0,
                child:
                    CenteredTable(headings: testHeadings, values: testPoints))),
        RotatingWidgetRow(
            len: 4,
            children: const [
              Text(""),
              Text("Geben"),
              Text("Hören"),
              Text("Sagen")
            ],
            onRotateReady: (rotate) {
              rotateFunction = rotate;
            }),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SelectionButtonRow(
                rowName: "Einzelspieler",
                labels: const ["Spieler1", "Spieler2", "Spieler3"],
                onChanged: (newValue) {
                  setState(() {
                    player = newValue;
                  });
                }),
            SelectionButtonRow(
                rowName: "mit/ohne",
                labels: const ["Null", "1", "2", "3", "4", "Grand"],
                onChanged: (newValue) {
                  //print("Still waiting to be defined");
                }),
            SelectionButtonRow(
                rowName: "Farbe",
                labels: const ["Schell", "Rot", "Grün", "Eichel"],
                onChanged: (newValue) {
                  //print("Still waiting to be defined");
                }),
            SelectionButtonRow(
                rowName: "",
                labels: const ["Ouvert", "Hand"],
                onChanged: (newValue) {
                  //print("Still waiting to be defined");
                }),
            SelectionButtonRow(
                rowName: "",
                labels: const [
                  "Schneider",
                  "Schneider Angesagt",
                  "Schwarz",
                  "Schwarz Angesagt"
                ],
                onChanged: (newValue) {
                  //print("Still waiting to be defined");
                }),
            SelectionButtonRow(
                rowName: "Spielausgang",
                labels: const ["Sieg", "Niederlage"],
                onChanged: (newValue) {
                  //print("Still waiting to be defined");
                }),
            SelectionButtonRow(
                rowName: "",
                labels: const ["Kontra", "Re"],
                onChanged: (newValue) {
                  //print("Still waiting to be defined");
                }),
            Text("$player $verhalten ${dummy()} Punkte"),
            Padding(
                padding: const EdgeInsets.only(right: 3, bottom: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () => rotateFunction(),
                        child: const Text("Hinzufügen")),
                    TextButton(onPressed: dummy, child: const Text("Löschen"))
                  ],
                ))
          ],
        ),
      ],
    ));
  }
}
