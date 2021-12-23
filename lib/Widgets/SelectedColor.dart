import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keluhkesalku/Bloc/Notes/notes_bloc.dart';

import 'Circle.dart';

class SelectedColors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final noteBloc = BlocProvider.of<NotesBloc>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Circle(
          color: 0xfff20027,
          onPressed: () => noteBloc.add(SelectedColorEvent(0xfff20027)),
        ),
        Circle(
          color: 0xff000000,
          onPressed: () => noteBloc.add(SelectedColorEvent(0xff000000)),
        ),
        Circle(
          color: 0xff006ad7,
          onPressed: () => noteBloc.add(SelectedColorEvent(0xff006ad7)),
        ),
        Circle(
          color: 0xff81d700,
          onPressed: () => noteBloc.add(SelectedColorEvent(0xff81d700)),
        ),
      ],
    );
  }
}
