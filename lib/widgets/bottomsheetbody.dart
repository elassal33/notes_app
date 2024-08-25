import 'package:flutter/material.dart';
import 'package:my_notes_app/widgets/custom_bottom.dart';
import 'package:my_notes_app/widgets/custom_text_field.dart';

class bottomsheetbody extends StatefulWidget {
  const bottomsheetbody({
    super.key,
  });

  @override
  State<bottomsheetbody> createState() => _bottomsheetbodyState();
}

class _bottomsheetbodyState extends State<bottomsheetbody> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode =AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 10),
        child: Form(
          key: _formKey,
          autovalidateMode: _autovalidateMode,
          child: Column(children: [
            Textf(hint: 'Title',max: 1,),
            Textf(hint: 'Content',max: 8,),
            custom_bottom(ontap:() {
             if (_formKey.currentState!.validate()) {
               _formKey.currentState!.save();
             }
             else
             _autovalidateMode =AutovalidateMode.always;
             
             
             
          
setState(() {
  
});

            },)
          ],),
        ),
      ),
    );
  }
}