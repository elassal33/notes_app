import 'package:flutter/material.dart';
import 'package:my_notes_app/widgets/bottomsheetbody.dart';
import 'package:my_notes_app/widgets/custom_app_bar.dart';
import 'package:my_notes_app/widgets/custom_bottom.dart';
import 'package:my_notes_app/widgets/custom_note.dart';
import 'package:my_notes_app/widgets/custom_text_field.dart';
import 'package:my_notes_app/widgets/home_page_body.dart';

class Notes extends StatefulWidget{
  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(    floatingActionButton: FloatingActionButton(onPressed: (){
      showModalBottomSheet(context: context, builder: (context){
        return bottomsheetbody();
      });
    },child:Icon(Icons.add) ,),
  body:  home_page_body(),);
  }
}



