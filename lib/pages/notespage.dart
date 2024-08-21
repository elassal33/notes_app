import 'package:flutter/material.dart';
import 'package:my_notes_app/widgets/custom_app_bar.dart';
import 'package:my_notes_app/widgets/custom_bottom.dart';
import 'package:my_notes_app/widgets/custom_note.dart';
import 'package:my_notes_app/widgets/custom_text_field.dart';
import 'package:my_notes_app/widgets/home_page_body.dart';

class Notes extends StatelessWidget{
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

class bottomsheetbody extends StatelessWidget {
  const bottomsheetbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 10),
        child: Column(children: [
          Textf(hint: 'Title',max: 1,),
          Textf(hint: 'Content',max: 8,),
          custom_bottom()
        ],),
      ),
    );
  }
}

