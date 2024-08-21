import 'package:flutter/material.dart';
import 'package:my_notes_app/widgets/custom_app_bar.dart';
import 'package:my_notes_app/widgets/custom_note.dart';

class home_page_body extends StatelessWidget {
  const home_page_body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
    
      Column(
    
        children: [
          
      const    custom_app_bar(title: 'Notes',icon: Icons.search,)
          , Expanded(
    
            child: ListView.builder(  padding:const EdgeInsets.symmetric(vertical: 4,horizontal: 8),
              itemCount:10 ,itemBuilder:(c,n){
              
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: custom_note(),
              );
            } ),
          )
          
        ],
      );
    
  }
}



