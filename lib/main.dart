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
          title: const Center(
            child: Text("Flutter: Meus primeiros passos"),
          ),
        ),
        body: Container(
          color: Colors.black,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {}),
      ),
    );
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

