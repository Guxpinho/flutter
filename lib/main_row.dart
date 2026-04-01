import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //não tirar

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Exemplo Row")),

        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home, size: 50),

              SizedBox(width: 50),

              Icon(Icons.favorite, size: 50),

              SizedBox(width: 50),

              Icon(Icons.settings, size: 40),
            ],
          ),
        ),
      ),
    );
  }
}
