import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_notes_app/widgets/custom_app_bar.dart';
import 'package:my_notes_app/widgets/custom_note.dart';

class Notes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body:Column(

      children: [
        
        custom_app_bar()
        , Expanded(

          child: ListView.builder(  padding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
            itemCount:10 ,itemBuilder:(c,n){
            
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: custom_note(),
            );
          } ),
        )
        
      ],
    ) ,
  );
  }

}



