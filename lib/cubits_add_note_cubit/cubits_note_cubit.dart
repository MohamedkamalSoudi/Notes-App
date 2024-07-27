import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'package:notes_app/cubits_add_note_cubit/add_note_state.dart';
class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
}