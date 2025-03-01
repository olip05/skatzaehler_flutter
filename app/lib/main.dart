import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //define varibles and ethods here by using setState to refresh surface
  String title = "Skatzähler";
  List<List<int>> testPoints = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ];

  String player = "Spieler 1";
  String verhalten = "gewinnt";

  void _incrementCounter() {
    setState(() {});
  }

  List<TableRow> createPointTable(List<List<int>> points) {
    List<TableRow> tableContent = [];
    for (var i = 0; i < points.length; i++) {
      List<Widget> line = [];
      for (var j = 0; j < points[i].length; j++) {
        TableCell cell = TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Center(child: Text(points[i][j].toString())));
        line.add(cell);
      }
      tableContent.add(TableRow(children: line));
    }
    return tableContent;
  }

  int calculatedPoints() {
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
            FloatingActionButton(
                onPressed: _incrementCounter, child: const Text("Menü")),
          ]),
          const Text("Game title goes here"),
          Table(columnWidths: const {
            0: FlexColumnWidth(),
            1: FlexColumnWidth(),
            2: FlexColumnWidth()
          }, children: createPointTable(testPoints)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Geben"),
              Text("Hören"),
              Text("Sagen"),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Einzelspieler"),
                  Expanded(
                      child: TextButton(
                          onPressed: _incrementCounter,
                          child: const Text("Spieler 1"))),
                  Expanded(
                      child: TextButton(
                          onPressed: _incrementCounter,
                          child: const Text("Spieler 2"))),
                  Expanded(
                      child: TextButton(
                          onPressed: _incrementCounter,
                          child: const Text("Spieler 3"))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("mit/ohne"),
                  Expanded(
                      child: TextButton(
                          onPressed: _incrementCounter,
                          child: const Text("Null"))),
                  Expanded(
                      child: TextButton(
                          onPressed: _incrementCounter,
                          child: const Text("1"))),
                  Expanded(
                      child: TextButton(
                          onPressed: _incrementCounter,
                          child: const Text("2"))),
                  Expanded(
                      child: TextButton(
                          onPressed: _incrementCounter,
                          child: const Text("3"))),
                  Expanded(
                      child: TextButton(
                          onPressed: _incrementCounter, child: const Text("4")))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Farbe"),
                  Expanded(
                      child: TextButton(
                          onPressed: _incrementCounter,
                          child: const Text("Schell"))),
                  Expanded(
                      child: TextButton(
                          onPressed: _incrementCounter,
                          child: const Text("Rot"))),
                  Expanded(
                      child: TextButton(
                          onPressed: _incrementCounter,
                          child: const Text("Grün"))),
                  Expanded(
                      child: TextButton(
                          onPressed: _incrementCounter,
                          child: const Text("Eichel")))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: _incrementCounter,
                      child: const Text("Ouvert")),
                  TextButton(
                      onPressed: _incrementCounter, child: const Text("Hand"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: _incrementCounter,
                      child: const Text("Schneider")),
                  TextButton(
                      onPressed: _incrementCounter,
                      child: const Text("Angesagt")),
                  TextButton(
                      onPressed: _incrementCounter,
                      child: const Text("Schwarz")),
                  TextButton(
                      onPressed: _incrementCounter,
                      child: const Text("Angesagt"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Spielausgang"),
                  Expanded(
                      child: TextButton(
                          onPressed: _incrementCounter,
                          child: const Text("Sieg"))),
                  Expanded(
                      child: TextButton(
                          onPressed: _incrementCounter,
                          child: const Text("Niederlage")))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: _incrementCounter,
                      child: const Text("Kontra")),
                  TextButton(
                      onPressed: _incrementCounter, child: const Text("Re")),
                ],
              ),
              Text("$player $verhalten " +
                  calculatedPoints().toString() +
                  " Punkte"),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: _incrementCounter,
                      child: const Text("Hinzufügen")),
                  TextButton(
                      onPressed: _incrementCounter,
                      child: const Text("Löschen"))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
