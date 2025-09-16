import 'package:flutter/material.dart';
import 'package:notes_app/Features/Home/data/Models/note.dart';
import 'package:notes_app/Features/Home/presentation/Views/Widgets/Note_Edit_View_Body.dart';

class NoteEditView extends StatelessWidget {
  const NoteEditView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: NoteEditViewBody(note: note)));
  }
}
