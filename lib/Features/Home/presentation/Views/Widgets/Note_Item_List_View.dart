import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Features/Home/data/Models/note.dart';
import 'package:notes_app/Features/Home/presentation/Manager/Note_Cubit/Note_Cubit.dart';
import 'package:notes_app/Features/Home/presentation/Manager/Note_Cubit/Note_State.dart';
import 'package:notes_app/Features/Home/presentation/Views/Widgets/Note_Item.dart';

class NoteItemListView extends StatelessWidget {
  NoteItemListView({super.key});
  final List<Color> colors = [
    Color(0xFFE3F2FD),
    Color(0xFFFCE4EC),
    Color(0xFFE8F5E9),
    Color(0xFFFFF9C4),
    Color(0xFFF3E5F5),
    Color(0xFFE0F7FA),
    Color(0xFFFFF3E0),
    Color(0xFFEDE7F6),
    Color(0xFFFFEBEE),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes ?? [];

        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            final loopedIndex = index % colors.length;
            return NoteItem(color: colors[loopedIndex], note: notes[index]);
          },
        );
      },
    );
  }
}
