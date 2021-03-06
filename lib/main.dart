import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:keluhkesalku/Bloc/Notes/notes_bloc.dart';
import 'package:keluhkesalku/Models/NoteModels.dart';
import 'package:keluhkesalku/Screens/HomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(NoteModelsAdapter());

  await Hive.openBox<NoteModels>('keepNote');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));

    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => NotesBloc())],
      child: MaterialApp(
        title: 'keluhkesalku-Miftakhurrokhmah',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
