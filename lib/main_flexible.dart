import 'package:flutter/material.dart';

void main() {
  runApp(FlexibleExample()); //não tirar
}

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({super.key}); //não tirar


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo Flexible",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flexible"),
        ),
        body: Row(
          children: [
            Flexible(
            flex: 1,
            child: Container(
              height: 120,
              color: const Color.fromARGB(255, 244, 67, 54),
              child: const Center(child: Text("Parte 1")),
                ),
            ),
            Flexible(
            flex: 2,
            child: Container(
              height: 120,
              color: const Color.fromARGB(255, 0, 99, 180),
              child: const Center(
                child: Text(
                  "Parte 2",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          
        ),
        Flexible(
            flex: 3,
            child: Container(
              height: 120,
              color: const Color.fromARGB(255, 6, 126, 0),
              child: const Center(
                child: Text(
                  "Parte 3",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          
        ),
          ]
              ),
            ),
    );
  }
}
      