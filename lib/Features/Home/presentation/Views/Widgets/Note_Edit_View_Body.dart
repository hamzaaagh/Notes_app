import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Features/Home/data/Models/note.dart';
import 'package:notes_app/Features/Home/presentation/Manager/Note_Cubit/Note_Cubit.dart';
import 'package:notes_app/Features/Home/presentation/Views/Widgets/Custom_App_Bar.dart';
import 'package:notes_app/Features/Home/presentation/Views/Widgets/Custom_Text_Filed.dart';

class NoteEditViewBody extends StatefulWidget {
  const NoteEditViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<NoteEditViewBody> createState() => _NoteEditViewBodyState();
}

class _NoteEditViewBodyState extends State<NoteEditViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
            onpressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = title ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NoteCubit>(context).fetchallnotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .1),
          CustomTextFiled(
            hint: widget.note.title,
            onChanged: (value) {
              widget.note.title = value!;
            },
          ),
          SizedBox(height: 15),
          CustomTextFiled(
            hint: widget.note.subtitle,
            maxlines: 5,
            onChanged: (value) {
              widget.note.subtitle = value!;
            },
          ),
        ],
      ),
    );
  }
}
