import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:my_notes_app/cubits/add_note_cubit.dart';
import 'package:my_notes_app/cubits/note_list_cubit.dart';
import 'package:my_notes_app/models/note_model.dart';
import 'package:my_notes_app/states/add_note_states.dart';
import 'package:my_notes_app/widgets/custom_bottom.dart';
import 'package:my_notes_app/widgets/custom_circle.dart';
import 'package:my_notes_app/widgets/custom_text_field.dart';
import 'package:my_notes_app/widgets/customlistcolor.dart';

class bottomsheetbody extends StatefulWidget {
  const bottomsheetbody({
    super.key,
  });

  @override
  State<bottomsheetbody> createState() => _bottomsheetbodyState();
}

class _bottomsheetbodyState extends State<bottomsheetbody> {
 
 DateTime now = DateTime.now();
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  String ? title;
   String ?content;
   

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => add_note_cubit(),
      child: BlocConsumer<add_note_cubit, add_note_state>(
        listener: (context, state) {
          if (state is add_note_failer) {
          
          }
          if (state is add_note_sucess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return Container(
            child: IgnorePointer(
              ignoring:state is add_note_loading? true:false,
             
              child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 10),
                child: Form(
                  key: _formKey,
                  autovalidateMode: _autovalidateMode,
                  child: Column(
                    children: [
                      Textf(
                        hint: 'Title',
                        max: 1,
                        onSaved: (p0) {
                       title = p0;
                        },
                      ),
                      Textf(
                        hint: 'Content',
                        max: 8,
                        onSaved: (p0) {
                        content = p0;
                        },
                      ),
                     custom_listcolor() ,
                      custom_bottom(isloading: state is add_note_loading? true:false,
                        ontap: () {
                        
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();

                          } else
                            _autovalidateMode = AutovalidateMode.always;
                          Note_model note=Note_model(title: title!, content: content!, color:5,date: DateFormat('yyyy-MM-dd – kk:mm').format(now).toString());
                            BlocProvider.of<add_note_cubit>(context).add_note(note);
  
       BlocProvider.of<note_list>(context).get_note_list();
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

