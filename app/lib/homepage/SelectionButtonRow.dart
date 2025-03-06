import 'package:flutter/material.dart';

class SelectionButtonRow<T> extends StatelessWidget {
  final String rowName;
  final List<T> labels;
  final ValueChanged<T> onChanged;

  const SelectionButtonRow(
      {super.key,
      required this.rowName,
      required this.labels,
      required this.onChanged});

  List<ButtonSegment<T>> createButtonSegments(List<T> content) {
    List<ButtonSegment<T>> ret = [];
    for (int i = 0; i < content.length; i++) {
      ret.add(
          ButtonSegment(value: content[i], label: Text(content[i].toString())));
    }
    return ret;
  }

  @override
  Widget build(BuildContext context) {
    List<ButtonSegment<T>> segments = createButtonSegments(labels);
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Text(rowName),
      SegmentedButton<T>(
          segments: segments,
          selected: {segments[0].value},
          onSelectionChanged: (Set<T> newSelection) {
            if (newSelection.isNotEmpty) {
              onChanged(newSelection.first);
            }
          })
    ]);
  }
}
