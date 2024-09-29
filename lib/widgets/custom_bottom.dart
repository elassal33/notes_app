import 'package:flutter/material.dart';

class custom_bottom extends StatelessWidget{

custom_bottom({required this.ontap,required this.isloading});
  void Function()? ontap;
  bool isloading;

  Widget build(BuildContext context) {
    final double width=MediaQuery.of(context).size.width;
   return Material(
     child: InkWell(
   
      onTap: ontap,
       child: Container(height:width/10 ,width:width ,decoration: BoxDecoration( color: Colors.blue,
        borderRadius: BorderRadius.circular(16)
       ),child: Center(child:isloading==false? Text('add',style: TextStyle(fontSize: 15),):SizedBox(height:20,width: 20 ,child: CircularProgressIndicator(color: Colors.white,)),),),
     ),
   );
  }
}