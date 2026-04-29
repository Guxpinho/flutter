import 'package:flutter/material.dart';

void main() {
  runApp(SafeAreaExample()); //não tirar
}

class SafeAreaExample extends StatelessWidget {
  const SafeAreaExample({super.key}); //não tirar


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MediaQuery",
     home: Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Text(
              "Aplicação flutter", style: TextStyle(fontSize: 24)
            ),
            SizedBox(height: 20),
            Text("Conteúdo protegido da barra de status"),
          ],
        ),
      ),
     ),
    );
  }
}