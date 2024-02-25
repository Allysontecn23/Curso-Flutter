import 'package:flutter/material.dart';
import 'package:projeto02/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: const Text("Tarefas"),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: const Duration(milliseconds: 800),
          child: ListView(
            children: const [
              Task("Aprender flutter no cafe da manhã", "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large", 3),
              Task("Andar de bike", "https://binaries.pirelli.com/2022/11/18/090850210-b1eadd7b-d2d0-4c15-8c62-45dcecc9e0b2.jpg", 2),
              Task("Ler", "https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg", 4),
              Task("jogar", "https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg", 1),
              Task("Meditar", "https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg", 5),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: const Icon(Icons.remove_red_eye),
        ),
      );
  }
}