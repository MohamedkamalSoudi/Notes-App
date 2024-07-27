part of 'cubits_note_cubit.dart';

@immutable
abstract class NoteState {}

class AddNoteInitial extends NoteState {}

class AddNoteLoading extends NoteState {}

class AddNoteSuccess extends NoteState {}

class AddNoteFailure extends NoteState {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}
