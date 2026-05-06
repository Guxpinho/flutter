import 'package:flutter/material.dart';

void main() {
  runApp(const LoginApp()); 
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Responsivo",
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: altura * 0.1),
                  
                  Icon(
                    Icons.lock, 
                    color: Colors.blue, 
                    size: largura * 0.2, 
                  ),
                  
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 24, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  SizedBox(
                    width: largura * 0.8, 
                    child: Column( // Removido o 'const' daqui pois os filhos não são constantes
                      children: [
                        const TextField(
                          decoration: InputDecoration(labelText: "Email"),
                        ),
                        const TextField(
                          decoration: InputDecoration(labelText: "Senha"),
                        ),
                        const SizedBox(height: 30),
                        
                        
                        ElevatedButton( 
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(largura * 0.8, 50),
                          ),
                          child: const Text("Entrar"),
                        ),

                        const SizedBox(height: 10),

                        
                        TextButton(
                          onPressed: () {},
                          child: const Text("Criar conta"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}