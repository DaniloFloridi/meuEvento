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
            SizedBox(height: 20),
            _buildButtonListTile('Button 1', context),
            SizedBox(height: 20),
            _buildButtonListTile('Button 2', context),
            SizedBox(height: 20),
            _buildButtonListTile('Button 3', context),
            SizedBox(height: 20),
            _buildButtonListTile('Button 4', context),
            SizedBox(height: 20),
            _buildButtonListTile('Button 5', context),
            Spacer(), // Adiciona um espaço flexível para empurrar o botão para a parte inferior
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Voltar para Meus Eventos'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonListTile(String buttonText, BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
        onTap: () {
          // Adicione a lógica para o que você deseja fazer quando o botão for pressionado
          print('$buttonText Pressionado');
        },
        child: ListTile(
          title: Text(buttonText),
        ),
      ),
    );
  }
}
