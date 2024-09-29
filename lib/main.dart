import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive/hive.dart';
import 'package:my_notes_app/cubits/note_list_cubit.dart';
import 'package:my_notes_app/keys.dart';
import 'package:my_notes_app/models/note_model.dart';
import 'package:my_notes_app/observes/observs.dart';
import 'package:my_notes_app/pages/notespage.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.initFlutter;
  Hive.registerAdapter(NotemodelAdapter());
  await Hive.openBox(kbox2);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => note_list(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
          home: Notes()),
    );
  }
}
