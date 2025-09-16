import 'package:flutter/material.dart';
import 'package:notes_app/Core/consts.dart';
import 'package:notes_app/Features/Home/data/Models/note.dart';
import 'package:notes_app/Features/Home/presentation/Views/Widgets/Note_Edit_View_Body.dart';

class NoteEditView extends StatelessWidget {
  const NoteEditView({super.key, required this.note, required this.color});
  final NoteModel note;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [color, Colors.black, Colors.black],
              stops: [0.0, 0.8, 1.0],
            ),
          ),
          child: NoteEditViewBody(note: note, color: color),
        ),
      ),
    );
  }
}
