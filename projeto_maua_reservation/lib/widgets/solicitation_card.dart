import 'package:flutter/material.dart';

class SolicitationCard extends StatelessWidget {
  final String data;
  final String hora;
  final String sala;
  final String motivo;

  const SolicitationCard({Key? key, required this.data, required this.hora, required this.sala, required this.motivo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 200,
        width: 300,
        child: Stack(children: [
          const Positioned(
            left: 140,
            top: 10,
            child: Text("Sala"),
          ),
          Positioned(
            top: 50,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Data: $data"),
                Text("Hora: $hora"),
                Text("Sala: $sala"),
                Text("Motivo: $motivo"),
                SizedBox(
                  height: 40,
                ),
                Text("Status: Aprovado")
              ],
            ),
          )
        ]),
      ),
    );
  }
}
