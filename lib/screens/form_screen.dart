import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameControlller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nova Tarefa"),
      ),
      body: Center(
        child: Container(
          height: 700,
          width: 395,
          decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black, width: 3)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Nome",
                    fillColor: Colors.white70,
                    filled: true
                  ),
                  controller: nameControlller,
                ),
                 
                 
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Nome",
                    fillColor: Colors.white70,
                    filled: true
                  ),
                  controller: nameControlller,
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  print(nameControlller.text);
                }, 
                child: Text("Adcionar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}