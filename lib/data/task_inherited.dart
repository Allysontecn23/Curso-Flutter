import 'package:flutter/material.dart';
import 'package:projeto02/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({super.key, required this.child}) : super(child: child);

  final Widget child;
  final List<Task> taskList = const [
    Task("Aprender flutter no cafe da manhã", "assets/images/aprender_flutter.png", 3),
    Task("Andar de bike", "assets/images/bike.jpg", 2),
    Task("Ler", "assets/images/ler.jpg", 4),
    Task("jogar", "assets/images/jogar.jpg", 1),
    Task("Meditar", "assets/images/meditar.jpeg", 5),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty)); 
  }

  static TaskInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TaskInherited>();
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
