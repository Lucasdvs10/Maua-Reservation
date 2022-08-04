import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_maua_reservation/widgets/entrar_button.dart';

import '../widgets/reserva_button.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imagePath = 'assets/images/top_login.png';
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              //foto do topo
              Container(
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height * 0.200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover),
                ),
              ),
              // gradient
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.064,
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
              // Escrita Reservas
              const Padding(
                padding: EdgeInsets.only(top: 155),
                child: BotaoReservas(),
              ),
              // Escrita Cadastre sua conta
              const Padding(
                padding: EdgeInsets.only(top: 250),
                child: Text(
                  'Cadastre sua conta:',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 28, 68, 129),
                  ),
                ),
              ),
              //input
              Padding(
                padding: const EdgeInsets.only(top: 320),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildEmail(),
                        buildPassword(),
                        confirmPassword()
                      ],
                    ),
                  ),
                ),
              ),
              // botão
              Padding(
                padding: const EdgeInsets.only(top: 620),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [EntrarButton()],
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
          labelText: 'Email Mauá',
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
          hintText: '*********',
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

  Widget confirmPassword() => const TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: '*********',
          prefixIcon: Icon(
            Icons.lock,
            color: Color.fromARGB(255, 28, 68, 129),
          ),
          labelStyle: TextStyle(
            color: Color.fromARGB(255, 28, 68, 129),
            fontSize: 20,
          ),
          labelText: 'Confirme senha',
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
