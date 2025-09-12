abstract class AddNoteState {}

class AddInitial extends AddNoteState {}

class Addloading extends AddNoteState {}

class Addsucess extends AddNoteState {}

class Addfailure extends AddNoteState {
  final String errmessage;

  Addfailure({required this.errmessage});
}
