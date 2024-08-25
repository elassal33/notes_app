import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_notes_app/keys.dart';
import 'package:my_notes_app/models/note_model.dart';
import 'package:my_notes_app/pages/notespage.dart';

void main()async {
  await Hive.initFlutter;
Hive.registerAdapter(NotemodelAdapter());
await Hive.openBox(kbox);

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
      fontFamily: 'Poppins',
        brightness: Brightness.dark
      ),
      home:Notes()
    );
  }
}
  