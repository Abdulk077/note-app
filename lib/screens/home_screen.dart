import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/services/database_helper.dart';
import 'package:notes_app/model/notes_model.dart';
import 'package:notes_app/services/database_helper.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DatabaseHelper_databaseHelper = DatabaseHelper();
  List<Note> notes = [];
  final List<Color> _noteColors = [
    Colors.amber ,
    Color(0xFFB2DFDB), // Light teal color
    Colors.redAccent,
    Colors.blueAccent,
    Colors.indigo,
    Colors.purpleAccent,
    Colors.pinkAccent,
  ];

  void initState() {
    // Todo : Implement the initState method to load notes from the database
    super.initState();
    _loadNotes();
  }
  Future<void> _loadNotes() async {
    final notes = await _databaseHelper.getNotes();
    setState(() {
      _notes = notes;
    }); 
  }
  
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}