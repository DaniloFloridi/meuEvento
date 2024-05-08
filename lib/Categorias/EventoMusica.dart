import 'package:flutter/material.dart';

class BaraoVermelho extends StatelessWidget {
  const BaraoVermelho({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(child: Column(children: [
        Center(
           child: Text("Valor do Ingresso: 30 Mangos")
        ),
      ],),),
    );
  }
}
