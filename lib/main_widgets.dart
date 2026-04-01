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
        appBar: AppBar(title: const Text("Minha tela")),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.insert_invitation_outlined, size: 60),


              Text("d.s. é o melhor curso do sesi!",style: TextStyle( fontSize: 22, color: Colors.blueAccent, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 20), // Espaço entre o texto e o botão
              ElevatedButton(
                onPressed: () {
                  print("Usuário clicou");
                },
                child: Text("Curtir"),
              ),
            ])),
      ),
    );
  }
}