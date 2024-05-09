import 'package:evento/Categorias/EventoMusica.dart';
import 'package:evento/src/Pages/LoginScreen.dart';
import 'package:flutter/material.dart';

class Eventos extends StatelessWidget {
  const Eventos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eventos'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              tileColor: Colors.green,
              title: const Text("Eventos Esportivos", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.music_note),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BaraoVermelho()));
              },
            ),
            ListTile(
              tileColor: const Color.fromARGB(255, 244, 54, 235),
              title: const Text("Cinema"),
              leading: Icon(Icons.motorcycle),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BaraoVermelho()));
              },
            ),
            ListTile(
              tileColor: Color.fromARGB(255, 7, 85, 255),
              title: const Text("Shows Musicais"),
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
