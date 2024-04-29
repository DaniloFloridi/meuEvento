import 'package:flutter/material.dart';
import 'src/bottomNavBar/bottom.dart';
import 'src/eventos/Eventos.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Meu Evento"),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavBar(),
      
      body: Container(child: 
      Eventos(),
      ),
      ),
    );
  }
}
