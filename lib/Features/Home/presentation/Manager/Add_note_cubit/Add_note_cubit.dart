import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Core/consts.dart';
import 'package:notes_app/Features/Home/data/Models/note.dart';
import 'package:notes_app/Features/Home/presentation/Manager/Add_note_cubit/Add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddInitial());
  add(NoteModel note) async {
    emit(Addloading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      await notesbox.add(note);
      emit(Addsucess());
    } catch (e) {
      emit(Addfailure(errmessage: e.toString()));
    }
  }
}
