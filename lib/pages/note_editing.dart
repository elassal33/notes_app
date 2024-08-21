import 'package:flutter/material.dart';
import 'package:my_notes_app/widgets/custom_app_bar.dart';
import 'package:my_notes_app/widgets/custom_text_field.dart';

class Notes_editing extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return const Scaffold(
  body: SingleChildScrollView(
    
    child: Column(children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: custom_app_bar(icon: Icons.done, title: 'Edit'),
      ),
      Textf(hint: 'title', max: 1)
     , Textf(hint: 'content', max: 8)
    ],),
  ),
);
  }

}