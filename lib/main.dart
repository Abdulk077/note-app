import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:notes_app/screens/home_screen.dart';
 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

