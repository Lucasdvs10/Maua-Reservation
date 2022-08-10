import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_maua_reservation/Utils.dart';
import 'package:projeto_maua_reservation/pages/mother_screen.dart';

class EntrarButton extends StatelessWidget {
  const EntrarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Utils.AzulDaDev),
        elevation: MaterialStateProperty.all(0),
      ),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => TelaMae()),
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
