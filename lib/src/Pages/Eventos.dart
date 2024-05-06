import 'package:flutter/material.dart';

class Eventos extends StatelessWidget {
  const Eventos({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ListTile(
          tileColor: Colors.amber,
          title: const Text("Musica ao Vivo"),
          leading: Icon(Icons.music_note),
        ),

        ListTile(
          tileColor: Colors.red,
          title: const Text("Evento de Motos"),
          leading: Icon(Icons.motorcycle),
        ),

        ListTile(
          tileColor: Colors.green,
          title: const Text("Evento de Corrida"),
          leading: Icon(Icons.card_travel),
        )
      ],
    );
  }
}