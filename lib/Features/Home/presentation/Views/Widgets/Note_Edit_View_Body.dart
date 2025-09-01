import 'package:flutter/material.dart';
import 'package:notes_app/Features/Home/presentation/Views/Widgets/Custom_App_Bar.dart';
import 'package:notes_app/Features/Home/presentation/Views/Widgets/Custom_Text_Filed.dart';

class NoteEditViewBody extends StatelessWidget {
  const NoteEditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          CustomAppBar(title: "Edit Note", icon: Icons.check),
          SizedBox(height: MediaQuery.of(context).size.height * .1),
          CustomTextFiled(hint: "Title"),
          SizedBox(height: 15),
          CustomTextFiled(hint: "content", maxlines: 5),
        ],
      ),
    );
  }
}
