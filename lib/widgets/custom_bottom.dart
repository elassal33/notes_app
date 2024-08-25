import 'package:flutter/material.dart';

class custom_bottom extends StatelessWidget{

custom_bottom({required this.ontap});
  void Function()? ontap;

  Widget build(BuildContext context) {
    final double width=MediaQuery.of(context).size.width;
   return Material(
     child: InkWell(
   
      onTap: ontap,
       child: Container(height:width/10 ,width:width ,decoration: BoxDecoration( color: Colors.blue,
        borderRadius: BorderRadius.circular(16)
       ),child:const Center(child: Text('add',style: TextStyle(fontSize: 15),),),),
     ),
   );
  }
}