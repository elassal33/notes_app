import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/cubits/add_note_cubit.dart';
import 'package:my_notes_app/widgets/custom_circle.dart';

class custom_listcolor extends StatefulWidget {
  custom_listcolor({
    super.key,

  });

  @override
  State<custom_listcolor> createState() => _custom_listcolorState();
}

class _custom_listcolorState extends State<custom_listcolor> {
bool select=false;
int? currunt ;

  List numbers =[Colors.blue,Colors.red,Colors.green,Colors.yellow,Colors.pink,Colors.cyan,Colors.black,Colors.white,Colors.brown,Colors.grey,Colors.purple,];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(height:60 ,child: ListView.builder(
       itemCount: numbers.length,scrollDirection: Axis.horizontal,itemBuilder: (c,n){
         return GestureDetector( onTap:(){
    BlocProvider.of<add_note_cubit>(context).color=numbers[n];
 currunt=n;

 setState(() {
   
 });
         } ,
       child: custom_circle(select:currunt==n ,c: numbers[n].value,));})),
    );
  }
}
