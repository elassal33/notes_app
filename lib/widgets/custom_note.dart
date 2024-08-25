import 'package:flutter/material.dart';
import 'package:my_notes_app/pages/note_editing.dart';

class custom_note extends StatelessWidget {
  const custom_note({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell( 
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context){
        return Notes_editing();
      }) ) ;
      }, 
      child: Container(
        padding: EdgeInsets.only(top: 30,bottom:30 ),
        decoration: BoxDecoration(color: Colors.orange,borderRadius:BorderRadius.circular(16) ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end,children: [
          ListTile(
          title:  Text('flutter tips',style: TextStyle(color: Colors.black,fontSize: 30),),
          subtitle:Padding(
            padding: const EdgeInsets.only(top: 20,),
            child: Text('learn flutte wadasd ddd dddddddddr hhhhhhhhh',style: TextStyle(color: Colors.black.withOpacity(0.5) ,fontSize: 20),),
          ) ,
          trailing:IconButton.filledTonal(onPressed: (){},icon: Icon(Icons.delete,color: Colors.black,size: 30,)) ,
        
      
        ),
       Padding(
         padding: const EdgeInsets.only(right: 20),
         child: Padding(
           padding: const EdgeInsets.only(top: 35),
           child: Text('21-may-2024',style: TextStyle(color: Colors.black),),
         ),
       )    ],),
      ),
    );
  }
}