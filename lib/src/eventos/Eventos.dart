import 'package:flutter/material.dart';

class Eventos extends StatelessWidget {
  const Eventos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      
        body: Column(


          children: [
            const ListTile(
              title: const Text("Evento de Teatro"),
              tileColor: Colors.green,
              leading: Icon(Icons.theater_comedy),
            ),

            const ListTile(
              title: const Text("Evento de Atletismo"),
              tileColor: Colors.red,
              leading: Icon(Icons.sports_gymnastics),
            )
          ],
        ),
      ),
    );
  }
}