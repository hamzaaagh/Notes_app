import 'package:flutter/material.dart';
import 'package:notes_app/Features/Home/presentation/Views/Widgets/Note_Edit_View_Body.dart';

class NoteEditView extends StatelessWidget {
  const NoteEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: NoteEditViewBody()));
  }
}
