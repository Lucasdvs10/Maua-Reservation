import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_maua_reservation/pages/tela_mae.dart';

class EntrarButton extends StatelessWidget {
  const EntrarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(const Color.fromARGB(255, 28, 68, 129)),
        elevation: MaterialStateProperty.all(0),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TelaMae()),
        );
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: const Text(
          'Entrar',
          style:
              TextStyle(fontSize: 24, color: Colors.white, fontFamily: 'abel'),
        ),
      ),
    );
  }
}
