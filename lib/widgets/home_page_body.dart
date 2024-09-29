import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/cubits/note_list_cubit.dart';
import 'package:my_notes_app/states/note_list_states.dart';
import 'package:my_notes_app/widgets/custom_app_bar.dart';
import 'package:my_notes_app/widgets/custom_note.dart';

class home_page_body extends StatefulWidget {
  const home_page_body({
    super.key,
  });

  @override
  State<home_page_body> createState() => _home_page_bodyState();
}

class _home_page_bodyState extends State<home_page_body> {
  @override
  void initState() {
       BlocProvider.of<note_list>(context).get_note_list();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
            List notes = BlocProvider.of<note_list>(context).notes !;
        return Column(
          children: [
             custom_app_bar(
              title: 'Notes',
              icon: IconButton(onPressed: (){}, icon:const Icon(Icons.search)),
            ),
            Expanded(
              child: ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  itemCount: notes.length,
                  itemBuilder: (c, n) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: custom_note(
                        note: notes[n],
                      ),
                    );
                  }),
            )
          ],
        );
      ;
  }
}
