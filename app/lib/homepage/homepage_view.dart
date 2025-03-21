import 'package:app/widgets/CenteredTable.dart';
import 'package:app/widgets/CheckBoxListTileRow.dart';
import 'package:app/widgets/MenuButton.dart';
import 'package:app/widgets/RotatingWidgetRow.dart';
import 'package:app/widgets/ScrollableWidgetFrame.dart';
import 'package:app/widgets/SelectionButtonRow.dart';
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
  List<String> players = ["Spieler1", "Spieler2", "Spieler3"];
  String player = "Spieler1";
  String verhalten = "gewinnt";
  int multiplikator = 0;
  int farbwert = 9;
  List<bool> checkedValuesOuvertHand = [false, false];
  List<bool> checkedValuesSchneider = [false, false, false, false];
  List<bool> checkedValuesKontraRe = [false, false];

  int calculatePoints() {
    int wert;
    int multiplikator = this.multiplikator;
    int farbwert = this.farbwert;
    bool ouvert = checkedValuesOuvertHand[0];
    bool hand = checkedValuesOuvertHand[1];
    bool schneider = checkedValuesSchneider[0];
    bool schneiderAngesagt = checkedValuesSchneider[1];
    bool schwarz = checkedValuesSchneider[2];
    bool schwarzAngesagt = checkedValuesSchneider[3];
    bool kontra = checkedValuesKontraRe[0];
    bool re = checkedValuesKontraRe[1];

    if (multiplikator != 0 && ouvert) {
      multiplikator += 6;
    }

    if (multiplikator != 0 && !ouvert && hand) {
      multiplikator += 1;
    }

    if (multiplikator != 0 && !ouvert && schneider) {
      multiplikator += 1;
    }

    if (multiplikator != 0 && !ouvert && schneider && schneiderAngesagt) {
      multiplikator += 1;
    }
    if (multiplikator != 0 && !ouvert && schwarz) {
      multiplikator += 1;
    }
    if (multiplikator != 0 && !ouvert && schwarz && schwarzAngesagt) {
      multiplikator += 1;
    }

    wert = multiplikator * farbwert;

    if (multiplikator == 0 && !hand && !ouvert) {
      wert = 23;
    } else if (multiplikator == 0 && hand && !ouvert) {
      wert = 35;
    } else if (multiplikator == 0 && !hand && ouvert) {
      wert = 46;
    } else if (multiplikator == 0 && hand && ouvert) {
      wert = 59;
    }

    if (kontra && !re) {
      wert *= 2;
    } else if (kontra && re) {
      wert *= 4;
    }

    if (verhalten == "verliert" && !hand && !ouvert) {
      wert *= -2;
    } else if (verhalten == "verliert" && (hand || ouvert)) {
      wert *= -1;
    }

    return wert;
  }

  void handleCheckboxChangedOuvertHand(List<bool?> newValues) {
    setState(() {
      checkedValuesOuvertHand = List.from(
          newValues); // Werte werden zurückgegeben und im State gespeichert
    });
  }

  void handleCheckboxChangedSchneider(List<bool?> newValues) {
    setState(() {
      checkedValuesSchneider = List.from(
          newValues); // Werte werden zurückgegeben und im State gespeichert
    });
  }

  void handleCheckboxChangedKontraRe(List<bool?> newValues) {
    setState(() {
      checkedValuesKontraRe = List.from(
          newValues); // Werte werden zurückgegeben und im State gespeichert
    });
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
                labels: players,
                onChanged: (newValue) {
                  setState(() {
                    player = newValue;
                  });
                }),
            SelectionButtonRow(
                rowName: "mit/ohne",
                labels: const ["Null", "1", "2", "3", "4"],
                onChanged: (newValue) {
                  setState(() {
                    if (newValue == "Null") {
                      multiplikator = 0;
                    } else {
                      multiplikator = int.parse(newValue) + 1;
                    }
                  });
                }),
            SelectionButtonRow(
                rowName: "Farbe",
                labels: const ["Schell", "Rot", "Grün", "Eichel", "Grand"],
                onChanged: (newValue) {
                  setState(() {
                    if (newValue == "Schell") {
                      farbwert = 9;
                    }
                    if (newValue == "Rot") {
                      farbwert = 10;
                    }
                    if (newValue == "Grün") {
                      farbwert = 11;
                    }
                    if (newValue == "Eichel") {
                      farbwert = 12;
                    }
                    if (newValue == "Grand") {
                      farbwert = 24;
                    }
                  });
                }),
            CheckBoxListTileRow(
              titles: const [Text("Ouvert"), Text("Hand")],
              checkedValues:
                  checkedValuesOuvertHand, // Stelle sicher, dass die Werte als List<bool?> übergeben werden
              onChanged:
                  handleCheckboxChangedOuvertHand, // Callback, um die Werte zu aktualisieren
            ),
            CheckBoxListTileRow(
                titles: const [
                  Text("Schneider"),
                  Text("Angesagt"),
                  Text("Schwarz"),
                  Text("Angesagt")
                ],
                checkedValues: checkedValuesSchneider,
                onChanged: handleCheckboxChangedSchneider),
            SelectionButtonRow(
                rowName: "Spielausgang",
                labels: const ["Sieg", "Niederlage"],
                onChanged: (newValue) {
                  setState(() {
                    if (newValue == "Sieg") {
                      verhalten = "gewinnt";
                    } else {
                      verhalten = "verliert";
                    }
                  });
                }),
            CheckBoxListTileRow(
              titles: const [Text("Kontra"), Text("Re")],
              checkedValues: checkedValuesKontraRe,
              onChanged: handleCheckboxChangedKontraRe,
            ),
            Text("$player $verhalten ${calculatePoints()} Punkte"),
            Padding(
                padding: const EdgeInsets.only(right: 3, bottom: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () => rotateFunction(),
                        child: const Text("Hinzufügen")),
                    TextButton(
                        onPressed: calculatePoints,
                        child: const Text("Löschen"))
                  ],
                ))
          ],
        ),
      ],
    ));
  }
}
