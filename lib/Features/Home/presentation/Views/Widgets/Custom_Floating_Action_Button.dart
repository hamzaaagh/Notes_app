import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      hoverColor: Colors.blueAccent,
      backgroundColor: Colors.blueAccent.shade400,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: const Icon(Icons.add, color: Colors.black, size: 30),
    );
  }
}
