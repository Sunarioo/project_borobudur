import 'package:flutter/material.dart';
import 'package:project_borobudur/data/candi_data.dart';
import 'package:project_borobudur/screens/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: DetailScreen(candi: candiList[0]),
    );
  }
}
