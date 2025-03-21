import 'package:flutter/material.dart';

class CheckBoxListTileRow extends StatefulWidget {
  const CheckBoxListTileRow(
      {super.key,
      required this.titles,
      required this.checkedValues,
      required this.onChanged});
  final List<Widget> titles;
  final List<bool?> checkedValues;
  final Function(List<bool?>) onChanged; // Callback für Änderungen

  @override
  State<CheckBoxListTileRow> createState() => _CheckBoxListTileRowState();
}

class _CheckBoxListTileRowState extends State<CheckBoxListTileRow> {
  late List<bool?> checkedValues;

  @override
  void initState() {
    super.initState();
    checkedValues =
        List.from(widget.checkedValues); // Kopiere die initialen Werte
  }

  List<IntrinsicWidth> createCheckboxListTiles(
      List<Widget> titles, List<bool?> checkedValues) {
    List<IntrinsicWidth> ret = [];
    for (int i = 0; i < titles.length; i++) {
      ret.add(IntrinsicWidth(
        child: CheckboxListTile(
          title: titles[i],
          value: checkedValues[i],
          onChanged: (newValue) {
            setState(() {
              checkedValues[i] = newValue;
            });
            widget.onChanged(checkedValues); // Sende die neuen Werte zurück
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ));
    }
    return ret;
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: createCheckboxListTiles(widget.titles, checkedValues));
  }
}
