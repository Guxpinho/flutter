import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //não tirar
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //não tirar

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Carteira Digital"),
          centerTitle: true,
        ),
        body: SizedBox.expand( // Força o body a ocupar a largura total da tela
          child: SingleChildScrollView(
            // O Padding cria o espaço nas laterais para o cartão não "colar" no vidro
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center, // Centraliza os filhos horizontalmente
              children: [
                
                // --- CARTÃO ---
                Container(
                  padding: const EdgeInsets.all(20),
                  width: 350,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 146, 0, 0),
                    // Adicionei uma sombra leve para destacar do fundo branco
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Banco SESI / SENAI", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                          Icon(Icons.contactless, size: 25, color: Colors.white),
                        ],
                      ),
                      const Icon(Icons.sim_card, size: 35, color: Color.fromARGB(255, 255, 187, 0)),
                      const Text("1234 5678 9012 3456", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("titular:", style: TextStyle(fontSize: 10, color: Colors.white)),
                          Text("Validade", style: TextStyle(fontSize: 10, color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Gustavo", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                          Text("12/30", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}