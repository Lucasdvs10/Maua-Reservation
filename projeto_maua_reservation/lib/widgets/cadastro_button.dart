import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_maua_reservation/pages/cadastro_page.dart';

class CadastroButton extends StatelessWidget {
  const CadastroButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Color.fromARGB(255, 28, 68, 129)),
        elevation: MaterialStateProperty.all(0),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CadastroPage()),
        );
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: const Text(
          'Cadastre-se',
          style:
              TextStyle(fontSize: 24, color: Colors.white, fontFamily: 'abel'),
        ),
      ),
    );
  }
}
