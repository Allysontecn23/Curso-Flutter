import 'package:flutter/material.dart';
import 'package:projeto02/components/task.dart';
import 'package:projeto02/screens/form_screen.dart';

import 'screens/initial_sceen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FormScreen()
    );
  }
}





