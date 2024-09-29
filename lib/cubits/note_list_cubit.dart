 import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_notes_app/keys.dart';
import 'package:my_notes_app/states/note_list_states.dart';

class note_list extends Cubit<note_list_states> {
  note_list() : super(note_list_initial());
  List? notes;
  get_note_list(){
  var n= Hive.box(kbox2);
   notes= n.values.toList();
 emit(note_list_done());
   
  
  }
}