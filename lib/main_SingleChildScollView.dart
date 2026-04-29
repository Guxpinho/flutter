import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); //não tirar
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //não tirar


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo Scroll",
      home: Scaffold(
        appBar: AppBar(title: const Text("SingleChildScrollView"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(
              20,
              (index) => Container(
                margin: const EdgeInsets.all(10),
                height: 80,
                color: Colors.green,
                child: Center(
                  child: Text(
                    "Item ${index + 1}",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            )
        ),
        ),
      ),
    );
  }
}
      