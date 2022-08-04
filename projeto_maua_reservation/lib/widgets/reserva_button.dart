import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BotaoReservas extends StatelessWidget {
  const BotaoReservas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.5,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 28, 68, 129),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: const Text(
        'RESERVAS',
        style: TextStyle(fontSize: 45, color: Colors.white, fontFamily: 'abel'),
      ),
    );
  }
}
