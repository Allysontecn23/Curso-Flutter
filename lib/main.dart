import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.cyan,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.pinkAccent,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.purple,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              Container(
                color: Colors.amber,
                height: 30,
                width: 300,
                child: const Text(
                  "Diamante Amarelo",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  debugPrint("Você Apertou o botão");
                },
                child: Text("Aperte o botão!"),
              )
            ],
          ),
        ));
  }
}


// Container(
//  color: Colors.black,
//  child: Column(
//    mainAxisAlignment: MainAxisAlignment.spaceAround,
//    crossAxisAlignment: CrossAxisAlignment.center,
//    children: [
//      Row(
//        mainAxisAlignment: MainAxisAlignment.spaceAround,
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: [
//          Container(
//            color: Colors.red,
//            width: 100,
//            height: 100,
//          ),
//          Container(
//            color: Colors.orange,
//            width: 100,
//            height: 100,
//          ),
//          Container(
//            color: Colors.yellow,
//            width: 100,
//            height: 100,
//          ),
//        ],
//      ),
//      Row(...),
//      Row(...),
//      Row(...),
//    ],
//  ),
// );

