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
        appBar: AppBar(title: const Text("Overflow Example")),
        body: Column(
          children: [
            for (int i = 0; i < 20; i++)
              Container(
                margin:  EdgeInsets.all(10),
                height: 80,
                color: Colors.blue,
              ),
          ],
        ),
        ),
      );
  }
}
      