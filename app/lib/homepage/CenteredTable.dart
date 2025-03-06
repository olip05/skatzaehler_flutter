import 'package:flutter/material.dart';

class CenteredTable<T> extends StatelessWidget {
  //store required content values of the table cells
  final List<List<T>> values;

  const CenteredTable({super.key, required this.values});

  //read contents from the value matrix and passing to several table cells
  List<TableRow> createTableCells(List<List<T>> content) {
    List<TableRow> tableContent = [];
    for (var i = 0; i < content.length; i++) {
      List<Widget> line = [];
      for (var j = 0; j < content[i].length; j++) {
        TableCell cell =
            TableCell(child: Center(child: Text(content[i][j].toString())));
        line.add(cell);
      }
      tableContent.add(TableRow(children: line));
    }
    return tableContent;
  }

  //create standard Table from centered values
  @override
  Widget build(BuildContext context) {
    return Table(children: createTableCells(values));
  }
}
