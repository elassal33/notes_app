import 'package:flutter/material.dart';

class Textf extends StatelessWidget{
 const Textf({required this.hint,required this.max, this.onSaved});
final  String hint;
final int max;
final void Function(String?)? onSaved;
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: TextFormField(
      onChanged:onSaved,
      validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
      maxLines: max,
      decoration: InputDecoration(
         
        hintText: hint,
        focusedBorder:  OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromARGB(255, 63, 158, 236)),
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