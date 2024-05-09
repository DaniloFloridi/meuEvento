import 'package:flutter/material.dart';
import 'package:evento/Categorias/EventoMusica.dart';
import 'package:evento/src/Pages/LoginScreen.dart';

class Eventos extends StatelessWidget {
  const Eventos({Key key});

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
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildButtonColumn(context, 'assets/image1.png'),
              SizedBox(width: 20),
              _buildButtonColumn(context, 'assets/image2.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtonColumn(BuildContext context, String imagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildImageButton(context, imagePath),
        SizedBox(height: 20),
        _buildImageButton(context, imagePath),
        SizedBox(height: 20),
        _buildImageButton(context, imagePath),
        SizedBox(height: 20),
        _buildImageButton(context, imagePath),
      ],
    );
  }

  Widget _buildImageButton(BuildContext context, String imagePath) {
    return InkWell(
      onTap: () {
        // Adicione a lógica para o que você deseja fazer quando o botão for pressionado
        print('Botão pressionado');
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(''
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
