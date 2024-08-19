import 'package:flutter/material.dart';

class custom_app_bar extends StatelessWidget {
  const custom_app_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        children: [
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: const    Text('Notes',style: TextStyle(color: Colors.white,fontSize: 30),),
      )
          ,const Spacer()
        ,Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Container(height:40,width: 40,decoration: BoxDecoration(color:Colors.white.withOpacity(0.1) ,borderRadius: BorderRadius.circular(16)),child:const Icon(Icons.search),),
        )
        ],
      ),
    );
  }
}