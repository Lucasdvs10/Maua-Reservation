import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/pages/reserva_button.dart';

import '../widgets/cadastro_button.dart';
import '../widgets/entrar_button.dart';
import '../widgets/esqueceu_senha_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imagePath = 'assets/images/top_login.png';
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              // foto do topo
              Container(
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height * 0.305,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover),
                ),
              ),
              // gradient
              Padding(
                padding: const EdgeInsets.only(top: 230),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color.fromARGB(255, 255, 255, 255),
                        Color.fromARGB(0, 255, 255, 255)
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 255),
                child: BotaoReservas(),
              ),
              // input e resto
              Padding(
                padding: const EdgeInsets.only(top: 370),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 130,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [buildEmail(), buildPassword()],
                    ),
                  ),
                ),
              ),
              // botÃµes
              Padding(
                padding: const EdgeInsets.only(top: 560),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  // color: Colors.deepOrange,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EntrarButton(),
                        CadastroButton(),
                        EsqueceuSenha(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildEmail() => const TextField(
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          labelText: 'Email',
          labelStyle: TextStyle(
            color: Color.fromARGB(255, 28, 68, 129),
            fontSize: 20,
          ),
          hintText: 'xx.xxxxx-x@maua.br',
          prefixIcon: Icon(
            Icons.email,
            color: Color.fromARGB(255, 28, 68, 129),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 28, 68, 129),
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 28, 68, 129),
              width: 2,
            ),
          ),
        ),
      );

  Widget buildPassword() => const TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Senha...',
          prefixIcon: Icon(
            Icons.lock,
            color: Color.fromARGB(255, 28, 68, 129),
          ),
          labelStyle: TextStyle(
            color: Color.fromARGB(255, 28, 68, 129),
            fontSize: 20,
          ),
          labelText: 'Senha',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 28, 68, 129),
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 28, 68, 129),
              width: 2,
            ),
          ),
        ),
      );
}