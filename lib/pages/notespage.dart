import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/cubits/note_list_cubit.dart';
import 'package:my_notes_app/states/note_list_states.dart';
import 'package:my_notes_app/widgets/bottomsheetbody.dart';
import 'package:my_notes_app/widgets/custom_app_bar.dart';
import 'package:my_notes_app/widgets/custom_bottom.dart';
import 'package:my_notes_app/widgets/custom_note.dart';
import 'package:my_notes_app/widgets/custom_text_field.dart';
import 'package:my_notes_app/widgets/home_page_body.dart';

class Notes extends StatefulWidget {
  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<note_list, note_list_states>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: bottomsheetbody(),
                    );
                  });
            },
            child: const Icon(Icons.add),
          ),
          body: home_page_body(),
        );
      },
    );
  }
}
