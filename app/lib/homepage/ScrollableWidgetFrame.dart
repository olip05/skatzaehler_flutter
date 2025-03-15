import 'package:flutter/material.dart';

class ScrollableWidgetFrame extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;

  const ScrollableWidgetFrame(
      {super.key,
      required this.child,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
        widthFactor: width,
        heightFactor: height,
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical, child: child));
  }
}
