import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EsqueceuSenha extends StatelessWidget {
  const EsqueceuSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          shadowColor: MaterialStateProperty.all(
            const Color.fromARGB(255, 96, 96, 96),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Esqueceu sua senha?',
          style: TextStyle(
            color: Color.fromARGB(255, 96, 96, 96),
            fontSize: 16,
          ),
        ));
  }
}