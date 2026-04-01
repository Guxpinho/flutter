import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //não tirar
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //não tirar

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Exemplo Row")),

        body: Container(
          width: 200,
          height: 100,
          color: Colors.red,
          child: Center(
            child: Text("Olá Flutter", style:  TextStyle(color: const Color.fromARGB(255, 255, 255, 255),),
          ),
          ),
        ),
      ),
    );
  }
}
