import 'package:flutter/material.dart';
import 'package:projeto02/components/task.dart';
import 'package:projeto02/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text("Tarefas"),
      ),
      body: ListView(
        children: const [
          Task("Aprender flutter no cafe da manhã", "assets/images/aprender_flutter.png", 3),
          Task("Andar de bike", "assets/images/bike.jpg", 2),
          Task("Ler", "assets/images/ler.jpg", 4),
          Task("jogar", "assets/images/jogar.jpg", 1),
          Task("Meditar", "assets/images/meditar.jpeg", 5),
          SizedBox(
            height: 80,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FormScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
