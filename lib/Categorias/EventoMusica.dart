import 'package:flutter/material.dart';
import 'package:evento/src/Pages/Eventos.dart';

class BaraoVermelho extends StatelessWidget {
  const BaraoVermelho({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Detalhes do Evento'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Valor do Ingresso: 30 Mangos"),
            ),
            Spacer(), // Adiciona um espaço flexível para empurrar o botão para a parte inferior
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Voltar para Eventos'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
