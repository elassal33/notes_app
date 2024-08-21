import 'package:flutter/material.dart';

class Textf extends StatelessWidget{
 const Textf({required this.hint,required this.max});
final  String hint;
final int max;
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: TextField(
      maxLines: max,
      decoration: InputDecoration(
         
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: const Color.fromARGB(255, 63, 158, 236)),
          borderRadius: BorderRadius.circular(8)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16)
        )
      ),
    ),
  );

  }
}