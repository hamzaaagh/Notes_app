import 'package:flutter/material.dart';
import 'package:notes_app/Features/Home/presentation/Views/Widgets/Custom_Model_Button_Sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: (context),
          builder: (build) {
            return CustomModelButtonSheet();
          },
        );
      },
      hoverColor: Colors.blueAccent,
      backgroundColor: Colors.blueAccent.shade400,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: const Icon(Icons.add, color: Colors.black, size: 30),
    );
  }
}
