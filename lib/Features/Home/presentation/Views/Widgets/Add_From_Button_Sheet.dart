import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/Core/Widgets/Custom_Button.dart';
import 'package:notes_app/Features/Home/data/Models/note.dart';
import 'package:notes_app/Features/Home/presentation/Manager/Add_note_cubit/Add_note_cubit.dart';
import 'package:notes_app/Features/Home/presentation/Manager/Add_note_cubit/Add_note_state.dart';

import 'package:notes_app/Features/Home/presentation/Views/Widgets/Custom_Text_Filed.dart';

class Addfrombuttunsheet extends StatefulWidget {
  const Addfrombuttunsheet({super.key});

  @override
  State<Addfrombuttunsheet> createState() => _AddfrombuttunsheetState();
}

class _AddfrombuttunsheetState extends State<Addfrombuttunsheet> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidate = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidate,
      child: Column(
        children: [
          CustomTextFiled(
            hint: "Title",
            onsaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 20),
          CustomTextFiled(
            hint: "content",
            maxlines: 4,
            onsaved: (value) {
              content = value;
            },
          ),
          Spacer(),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder:
                (context, state) => CustomElevatedButton(
                  isloading: state is Addloading ? true : false,

                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      var currentdate = DateTime.now();
                      var note = NoteModel(
                        title: title!,
                        subtitle: content!,
                        date: DateFormat.yMd().format(currentdate),
                        color: Colors.amber.value,
                      );
                      BlocProvider.of<AddNoteCubit>(context).add(note);
                    } else {
                      autovalidate = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                ),
          ),
        ],
      ),
    );
  }
}
