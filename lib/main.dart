import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tarefas"),
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                height: 140,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      height: 100,
                      width: 70,
                    ),
                    Text("Aprender Flutter"),
                    ElevatedButton(
                      onPressed: () {}, 
                      child: Icon(Icons.arrow_drop_up),),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}


class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
