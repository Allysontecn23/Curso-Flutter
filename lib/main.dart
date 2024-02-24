import 'package:flutter/material.dart';
import 'package:projeto02/task.dart';

import 'initial_sceen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InitialScreen()
    );
  }
}





