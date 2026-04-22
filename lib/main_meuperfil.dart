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
          title: const Text("Meu Perfil"),
          centerTitle: true,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        // 🔥 AGORA SIM: Container dentro do Column
                        Container(
                          padding: const EdgeInsets.all(20),
                          width: 350,
                          height: 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 146, 0, 0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/images/guxpinho1.jpeg',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      const Icon(Icons.account_circle,
                                          size: 100, color: Colors.white),
                                ),
                              ),

                              const SizedBox(height: 20),

                              const Text(
                                "Gustavo Rodrigues",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 10),

                              const Text(
                                "Desenvolvedor Mobile",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(146, 255, 255, 255),
                                  fontStyle: FontStyle.italic,
                                ),
                              ),

                              const SizedBox(height: 15),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.email, size: 30, color: Colors.white),
                                  SizedBox(width: 10),
                                  Text(
                                    "Gustavoguidolimpinho@gmail.com",
                                    style: TextStyle(fontSize: 12, color: Colors.white),
                                  ),
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.phone, size: 30, color: Colors.white),
                                  SizedBox(width: 10),
                                  Text(
                                    "(11) 99999-9999",
                                    style: TextStyle(fontSize: 12, color: Colors.white),
                                  ),
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.location_pin, size: 30, color: Colors.white),
                                  SizedBox(width: 10),
                                  Text(
                                    "Mococa - SP",
                                    style: TextStyle(fontSize: 12, color: Colors.white),
                                  ),
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.star, size: 30, color: Color.fromARGB(255, 255, 200, 0)),
                                  Icon(Icons.star, size: 30, color: Color.fromARGB(255, 255, 200, 0)),
                                  Icon(Icons.star, size: 30, color: Color.fromARGB(255, 255, 200, 0)),
                                  Icon(Icons.star_half, size: 30, color: Color.fromARGB(255, 255, 200, 0)),
                                  SizedBox(width: 5),
                                  Text("4,5", style: TextStyle(color: Colors.white)),
                                ],
                              ),

                              const SizedBox(height: 20),

                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder( // Borda arredondada
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: const Text("Editar Perfil"),
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
          },
        ),
      ),
    );
  }
}