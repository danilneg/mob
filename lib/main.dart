import 'package:flutter/material.dart';
import 'package:mob/pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mob_List',
      home: const HomePage(),
    );
  }
}
