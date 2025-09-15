import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Features/Home/presentation/Manager/Add_note_cubit/Add_note_cubit.dart';
import 'package:notes_app/Features/Home/presentation/Manager/Add_note_cubit/Add_note_state.dart';
import 'package:notes_app/Features/Home/presentation/Manager/Note_Cubit/Note_Cubit.dart';
import 'package:notes_app/Features/Home/presentation/Views/Widgets/Add_From_Button_Sheet.dart';

class CustomModelButtonSheet extends StatelessWidget {
  const CustomModelButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 2 / 4,
        child: Padding(
          padding: EdgeInsets.only(
            right: 16,
            left: 16,
            top: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is Addsucess) {
                BlocProvider.of<NoteCubit>(context).fetchallnotes();
                Navigator.pop(context);
              } else if (state is Addfailure) {}
            },
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state is Addloading ? true : false,
                child: Addfrombuttunsheet(),
              );
            },
          ),
        ),
      ),
    );
  }
}
