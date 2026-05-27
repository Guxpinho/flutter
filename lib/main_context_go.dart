import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Drawer'),
          backgroundColor: Colors.purple,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: const Center(child: Text("Abra o  menu")),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              GestureDetector(
                onTap: () => print('Clicou em: Loja'),
                child: const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.purple),
                  child: Text('loja', style: TextStyle(color: Colors.white, fontSize: 24)),
                  ),
              ),
              ListTile(
                title: const Text('Home'),
                onTap: () => context.go('/home'),
              ),
            ]
          ),
        ),
        ),
    );
  }
}