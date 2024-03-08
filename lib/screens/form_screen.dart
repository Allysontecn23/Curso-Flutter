import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameControlller = TextEditingController();
  TextEditingController difficultyControlller = TextEditingController();
  TextEditingController imageControlller = TextEditingController();

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
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black,
              width: 3,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Nome",
                    fillColor: Colors.white70,
                    filled: true,
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
                    hintText: "Dificuldade",
                    fillColor: Colors.white70,
                    filled: true,
                  ),
                  controller: difficultyControlller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (text) {
                    setState(() {
                      
                    });
                  },
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Imagem",
                    fillColor: Colors.white70,
                    filled: true,
                  ),
                  controller: imageControlller,
                ),
              ),
              Container(
                  height: 100,
                  width: 72,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.blue),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      imageControlller.text,
                      errorBuilder: (context, error, stackTrace) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/vetor.png"),);
                      },
                      fit: BoxFit.cover,
                    ),
                  )),
              ElevatedButton(
                onPressed: () {
                  print(nameControlller.text);
                  print(int.parse(difficultyControlller.text));
                  print(imageControlller.text);
                },
                child: const Text("Adcionar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
