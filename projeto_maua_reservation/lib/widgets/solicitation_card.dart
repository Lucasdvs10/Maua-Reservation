import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/Utils.dart';
import 'package:projeto_maua_reservation/widgets/status_solicitation_card.dart';

class SolicitationCard extends StatelessWidget {
  final String data;
  final String hora;
  final String sala;
  final String motivo;

  const SolicitationCard(
      {Key? key,
      required this.data,
      required this.hora,
      required this.sala,
      required this.motivo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(color: Utils.AzulDaDev, fontSize: 16);

    return Card(
      elevation: 5,
      child: SizedBox(
        height: 200,
        width: 300,
        child: Stack(children: [
          const Positioned(
            left: 140,
            top: 10,
            child: Text(
              "Sala",
              style: TextStyle(color: Utils.AzulDaDev, fontSize: 20),
            ),
          ),
          Positioned(
            top: 50,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Data: $data",
                  style: textStyle,
                ),
                Text(
                  "Hora: $hora",
                  style: textStyle,
                ),
                Text(
                  "Sala: $sala",
                  style: textStyle,
                ),
                Text(
                  "Motivo: $motivo",
                  style: textStyle,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      "Status:",
                      style: textStyle,
                    ),
                    StatusWidget.Pendente()
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
