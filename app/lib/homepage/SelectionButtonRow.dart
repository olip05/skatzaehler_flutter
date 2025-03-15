import 'package:flutter/material.dart';

class SelectionButtonRow<T> extends StatefulWidget {
  final String rowName;
  final List<T> labels;
  final ValueChanged<T> onChanged;

  const SelectionButtonRow(
      {super.key,
      required this.rowName,
      required this.labels,
      required this.onChanged});

  @override
  SelectionButtonRowState<T> createState() => SelectionButtonRowState<T>();
}

class SelectionButtonRowState<T> extends State<SelectionButtonRow<T>> {
  late T selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.labels[0];
  }

  T getValue() {
    return selectedValue;
  }

  List<ButtonSegment<T>> createButtonSegments(List<T> content) {
    List<ButtonSegment<T>> ret = [];
    for (int i = 0; i < content.length; i++) {
      ret.add(
        ButtonSegment(value: content[i], label: Text(content[i].toString())),
      );
    }
    return ret;
  }

  @override
  Widget build(BuildContext context) {
    List<ButtonSegment<T>> segments = createButtonSegments(widget.labels);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(widget.rowName),
          SegmentedButton<T>(
            segments: segments,
            selected: {selectedValue},
            onSelectionChanged: (Set<T> newSelection) {
              if (newSelection.isNotEmpty) {
                setState(() {
                  selectedValue = newSelection.first;
                });
                widget.onChanged(newSelection.first);
              }
            },
          ),
        ],
      ),
    );
  }
}
