import 'package:flutter/material.dart';

class MenuCloseButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const MenuCloseButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: const Icon(Icons.close));
  }
}
