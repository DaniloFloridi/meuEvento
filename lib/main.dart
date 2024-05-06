import 'package:evento/src/Pages/LoginScreen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBar(),
        drawer: const LoginScreen(),
      ),
    );
  }


  AppBar appBar() {
    return AppBar(
        title: const Text("Meu Evento",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      );
  }
}
