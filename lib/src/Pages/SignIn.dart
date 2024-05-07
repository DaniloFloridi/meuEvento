import 'package:evento/src/Pages/Eventos.dart';
import 'package:evento/src/Pages/textField.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final nomeController = TextEditingController();
  final dataNascimentoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.app_registration_rounded,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Tela de Cadastro",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                  controller: nomeController,
                  hintText: "Nome Completo",
                  obscureText: false),
              MyTextField(
                  controller: dataNascimentoController,
                  hintText: "Data de Nascimento",
                  obscureText: false),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    padding: const EdgeInsets.all(25),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text("Criar Conta", style: TextStyle(fontSize: 18),),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Eventos()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
