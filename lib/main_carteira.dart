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
      title: "Carteira Digital",
      home: const CarteiraDigital(),
    );
  }
}

class CarteiraDigital extends StatelessWidget {
  const CarteiraDigital({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carteira Digital"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [

          CartaoBanco(
            corCartao: Colors.black,
            banco: "Banco SESI / SENAI",
            numeroCartao: "1234 5678 9012 3456",
            titular: "Gustavo",
            validade: "12/30",
            bandeira: "assets/images/visa.png",
            logo: "assets/images/sesi-logo.png",
          ),

          SizedBox(height: 20),

          CartaoBanco(
            corCartao: Color.fromARGB(255, 183, 58, 58),
            banco: "Banco Vampiro",
            numeroCartao: "1111 2222 3333 4444",
            titular: "Sabrina",
            validade: "11/27",
            bandeira: "assets/images/mastercard.png",
            logo: "assets/images/senai.png",
          ),

          SizedBox(height: 20),

          CartaoBanco(
            corCartao: Color.fromARGB(255, 0, 163, 0),
            banco: "Banco do Musgo",
            numeroCartao: "4444 3333 2222 1111",
            titular: "Musguinho",
            validade: "09/20",
            bandeira: "assets/images/Elo_logo.png",
            logo: "assets/images/cpfl_novo.png",
          ),
          SizedBox(height: 20),

          CartaoBanco(
            corCartao: Color.fromARGB(255, 145, 0, 80),
            banco: "Banco de vinho",
            numeroCartao: "4444 3333 2222 1111",
            titular: "vinhedo",
            validade: "09/20",
            bandeira: "assets/images/noah.jpg",
            logo: "assets/images/senai.png",
          ),

          SizedBox(height: 20),

          CartaoBanco(
            corCartao: Color.fromARGB(255, 255, 166, 0),
            banco: "Banco da praia",
            numeroCartao: "4444 3333 2222 1111",
            titular: "praiano",
            validade: "09/20",
            bandeira: "assets/images/Elo_logo.png",
            logo: "assets/images/surfista.jpg",
          ),
        ],
      ),
    );
  }
}

class CartaoBanco extends StatelessWidget {
  final Color corCartao;
  final String banco;
  final String numeroCartao;
  final String titular;
  final String validade;
  final String bandeira;
  final String logo;

  const CartaoBanco({
    super.key,
    required this.corCartao,
    required this.banco,
    required this.numeroCartao,
    required this.titular,
    required this.validade,
    required this.bandeira,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: corCartao,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // 🔝 Topo
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                bandeira,
                height: 40,
                width: 40,
              ),
              Text(
                banco,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                logo,
                height: 50,
                width: 50,
              ),
              const Icon(Icons.contactless, size: 25, color: Colors.white),
            ],
            
          ),

          // 💳 Chip
          const Icon(
            Icons.sim_card,
            color: Color.fromARGB(255, 255, 140, 0),
            size: 30,
          ),

         
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Text(
                numeroCartao,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),

          // 🔻 Rodapé
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Titular",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  Text(
                    titular,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Validade",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  Text(
                    validade,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}