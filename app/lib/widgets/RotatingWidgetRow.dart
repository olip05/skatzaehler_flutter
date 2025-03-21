import 'package:flutter/material.dart';

class RotatingWidgetRow extends StatefulWidget {
  final List<Widget> children;
  final int len;
  final Function(Function) onRotateReady;

  const RotatingWidgetRow(
      {super.key,
      required this.children,
      required this.len,
      required this.onRotateReady});

  @override
  State<RotatingWidgetRow> createState() => _RotatingWidgetRowState();
}

class _RotatingWidgetRowState extends State<RotatingWidgetRow> {
  late List<Widget> displayedChildren;

  @override
  void initState() {
    displayedChildren = addPlaceholdersAndExpand();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onRotateReady(rotateWidgets);
    });
  }

  List<Widget> addPlaceholdersAndExpand() {
    List<Widget> list = [];
    int counter = widget.len - widget.children.length;
    if (counter >= 0) {
      for (; counter > 0; counter--) {
        list.add(const Text(""));
      }
    } else {
      throw Exception("too many children provided for defines length");
    }
    List<Widget> allChildren = [...widget.children, ...list];
    return List.generate(allChildren.length,
        (int i) => Expanded(child: Center(child: allChildren[i])));
  }

  void rotateWidgets() {
    setState(() {
      if (displayedChildren.length > 1) {
        Widget last = displayedChildren.removeAt(displayedChildren.length - 1);
        displayedChildren.insert(1, last);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: displayedChildren);
  }
}
