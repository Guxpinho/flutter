import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorTela(),
    );
  }
}

class ContadorTela extends StatefulWidget {
  const ContadorTela({super.key});

  @override
  State<ContadorTela> createState() => _ContadorTelaState();
}

class _ContadorTelaState extends State<ContadorTela> {
  int contador = 0;

  void incrementar() {
    setState(() {
      contador++;
    });
  }

  void remover() {
    setState(() {
      if (contador > 0) {
        contador--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sistema de Curtidas"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.favorite,
              size: 100,
              color: Colors.red,
            ),
            
            const SizedBox(height: 20),
            
            Text(
              "$contador curtidas",
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            // Botão de Curtir
            ElevatedButton.icon(
              onPressed: incrementar,
              label: const Text("👍Curtir"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(100, 50),
              ),
            ),

             SizedBox(width: 15),

            // Botão de Remover
            ElevatedButton.icon(
              onPressed: remover,
              label: const Text("👎Remover Curtida"),
              style: ElevatedButton.styleFrom(
              ),
            ),
          ],
        ),
          ],
      ),
      ),
    );
  }
}