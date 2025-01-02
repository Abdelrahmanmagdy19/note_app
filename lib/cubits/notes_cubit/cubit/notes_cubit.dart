import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes(NoteModel note) async {
    try {
      final box = Hive.box<NoteModel>(kNotBox);
      List<NoteModel> listNoteModel = box.values.toList();
      emit(NotesSuccess(listNoteModel));
    } catch (e) {
      emit(NotesFailuer(e.toString()));
    }
  }
}
