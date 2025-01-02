import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/models/note_model.dart';

import 'add_note_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note) {
    emit(AddNoteCubiLoding());
    try {
      var noteBox = Hive.box<NoteModel>(kNotBox);
      noteBox.add(note);
      emit(AddNoteCubitSuccess());
    } catch (e) {
      emit(AddNoteCubitFauilir(e.toString()));
    }
  }
}
