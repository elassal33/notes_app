import 'package:flutter/material.dart';

class custom_app_bar extends StatelessWidget {
  const custom_app_bar({required this.icon,required this.title
    ,super.key,
  });
final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        children: [
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child:    Text(title,style: TextStyle(color: Colors.white,fontSize: 30),),
      )
          ,const Spacer()
        ,Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Container(height:40,width: 40,decoration: BoxDecoration(color:Colors.white.withOpacity(0.1) ,borderRadius: BorderRadius.circular(16)),child: Icon(icon),),
        )
        ],
      ),
    );
  }
}