// ignore: file_names
import 'package:evento/src/Pages/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              //Logo
              Icon(
                Icons.lock,
                size: 100,
              ),

              Text(
                "Bem Vindo !",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),

              SizedBox(height: 25),

              MyTextField(
                controller: usernameController,
                hintText: 'Nome de Usuário',
                obscureText: false,
                ),

              MyTextField(
                controller: passwordController,
                hintText: 'Senha',
                obscureText: true,
              ),

              SizedBox(height: 10),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Esqueci minha senha',
                    style: TextStyle(
                      color: Colors.grey[600]
                    ),),
                  ],
                ),
              ),

              SizedBox(height: 25),

              

            ],
          ),
        ),
      ),
    );
  }
}
