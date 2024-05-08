import 'package:evento/Categorias/EventoMusica.dart';
import 'package:flutter/material.dart';

class Eventos extends StatelessWidget {
  const Eventos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              tileColor: Colors.green,
              title: const Text("Show do Barão Vermelho", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.music_note),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BaraoVermelho()));
              },
            ),
            ListTile(
              tileColor: Colors.red,
              title: const Text("Segunda conveção ao Chile"),
              leading: Icon(Icons.motorcycle),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BaraoVermelho()));
              },
            ),
            ListTile(
              tileColor: Colors.amber,
              title: const Text("Corrida de São Roque"),
              leading: Icon(Icons.verified_user_sharp),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BaraoVermelho()));
              },
            )
          ],
        ),
      ),
    );
  }
}
