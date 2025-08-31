import 'package:flutter/material.dart';
import 'package:notes_app/Features/Home/presentation/Views/Home_View.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
