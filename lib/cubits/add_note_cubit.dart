import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_notes_app/keys.dart';
import 'package:my_notes_app/models/note_model.dart';
import 'package:my_notes_app/states/add_note_states.dart';

class add_note_cubit extends Cubit<add_note_state> {
  add_note_cubit() : super(add_note_initial());
         Color color =Colors.orange;
  add_note(Note_model note_model) async{
    note_model.color=color.value;
    emit(add_note_loading());
   try {
 await   Hive.box(kbox2).add(note_model);
emit(add_note_sucess());
   } catch (e) {
     emit(add_note_failer(erorr: e.toString()));
   }
    

  }

}