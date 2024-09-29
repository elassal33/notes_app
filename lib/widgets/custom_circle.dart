import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class custom_circle extends StatefulWidget {
  @override
  custom_circle({required this.c,required this.select});
  final int c;
  bool select ;

  @override
  State<custom_circle> createState() => _custom_circleState();
}

class _custom_circleState extends State<custom_circle> {
  Widget build(BuildContext context) {
return widget.select? CircleAvatar(radius: 34,backgroundColor: Colors.white,child: CircleAvatar(radius: 27,backgroundColor:Color(widget.c),),):CircleAvatar(radius: 30,backgroundColor:Color(widget.c),);
  }
}