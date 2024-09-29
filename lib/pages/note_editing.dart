import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/cubits/note_list_cubit.dart';
import 'package:my_notes_app/models/note_model.dart';
import 'package:my_notes_app/widgets/custom_app_bar.dart';
import 'package:my_notes_app/widgets/custom_text_field.dart';
import 'package:my_notes_app/widgets/customeditlist.dart';
import 'package:my_notes_app/widgets/customlistcolor.dart';

class Notes_editing extends StatefulWidget{
 final Note_model  note;
  const Notes_editing({required this.note});

  @override
  State<Notes_editing> createState() => _Notes_editingState();
}

class _Notes_editingState extends State<Notes_editing> {
  String ? title;
  String ?content;
  @override
  Widget build(BuildContext context) {
return  Scaffold(
  body: SingleChildScrollView(
    
    child: Column(children: [
     Padding(
        padding: EdgeInsets.all(8.0),
        child: custom_app_bar(icon:IconButton.filled(onPressed:(){
widget.note.title=title ?? widget.note.title;
widget.note.content=content ?? widget.note.content;
widget.note.save();
BlocProvider.of<note_list>(context).get_note_list();
Navigator.pop(context);
        }, icon: Icon(Icons.done)), title: 'Edit'),
      ),
      Textf(hint: 'title', max: 1,onSaved: (p0) {
title =p0;
      },)
     , Textf(hint: 'content', max: 8,onSaved: (p0) {
       content=p0;
     },),
Padding(
  padding: const EdgeInsets.only(top: 10),
  child:   custom_editlistcolor(note: widget.note),
)
    ],),
  ),
);
  }
}