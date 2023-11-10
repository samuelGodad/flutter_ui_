import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Function() onPressed;

  const CustomFloatingActionButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.add),
    );
  }
}
