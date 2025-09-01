import 'package:flutter/material.dart';
import 'package:notes_app/Core/Widgets/Custom_Button.dart';
import 'package:notes_app/Features/Home/presentation/Views/Widgets/Custom_Text_Filed.dart';

class CustomModelButtonSheet extends StatelessWidget {
  const CustomModelButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 3.5 / 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextFiled(hint: "Title"),
            const SizedBox(height: 20),
            CustomTextFiled(hint: "content", maxlines: 4),
            Spacer(),
            CustomElevatedButton(),
          ],
        ),
      ),
    );
  }
}
