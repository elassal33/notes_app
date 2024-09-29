import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/cubits/note_list_cubit.dart';
import 'package:my_notes_app/models/note_model.dart';
import 'package:my_notes_app/pages/note_editing.dart';

class custom_note extends StatelessWidget {
  const custom_note({ required this.note,
    super.key,
  });
 
 
final Note_model note;
  @override
  Widget build(BuildContext context) {
    return InkWell( 
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context){
        return Notes_editing(note: note,);
      }) ) ;
      }, 
      child: Container(
        padding: EdgeInsets.only(top: 30,bottom:30 ),
        decoration: BoxDecoration(color:Color(note.color),borderRadius:BorderRadius.circular(16) ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end,children: [
          ListTile(
          title:  Text(note.title,style: TextStyle(color: Colors.black,fontSize: 30),),
          subtitle:Padding(
            padding: const EdgeInsets.only(top: 20,),
            child: Text(note.content,style: TextStyle(color: Colors.black.withOpacity(0.5) ,fontSize: 20),),
          ) ,
          trailing:IconButton(onPressed: (){
         note.delete();
           BlocProvider.of<note_list>(context).get_note_list();
          },icon: Icon(Icons.delete,color: Colors.black,size: 30,)) ,
        
      
        ),
       Padding(
         padding: const EdgeInsets.only(right: 20),
         child: Padding(
           padding: const EdgeInsets.only(top: 35),
           child: Text(note.date,style: TextStyle(color: Colors.black),),
         ),
       )    ],),
      ),
    );
  }
}