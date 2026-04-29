import 'package:flutter/material.dart';

void main() {
  runApp(ExpandedExample()); //não tirar
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key}); //não tirar


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo do Expanded",
      home: Scaffold(
        appBar: AppBar(title: const Text("Expanded"),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Center(child: Text("Header")),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        "Ocupa Todo espaço restante",
                        style: TextStyle(color: Colors.white),
                        ),
                        ),
                  ),
                )
          ]
              ),
            ),
        );
  }
}
      