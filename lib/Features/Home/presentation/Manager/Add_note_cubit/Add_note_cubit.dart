import 'package:bloc/bloc.dart';
import 'package:notes_app/Features/Home/presentation/Manager/Add_note_cubit/Add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddInitial());
}
