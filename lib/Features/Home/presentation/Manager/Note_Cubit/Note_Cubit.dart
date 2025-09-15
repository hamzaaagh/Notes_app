import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Core/consts.dart';
import 'package:notes_app/Features/Home/data/Models/note.dart' show NoteModel;
import 'package:notes_app/Features/Home/presentation/Manager/Note_Cubit/Note_State.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  List<NoteModel>? notes;
  fetchallnotes() {
    var notesbox = Hive.box<NoteModel>(kNotesBox);
    notes = notesbox.values.toList();
    emit(NoteSucces());
  }
}
