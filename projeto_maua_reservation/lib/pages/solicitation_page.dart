import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/widgets/solicitation_card.dart';
import 'package:projeto_maua_reservation/widgets/status_solicitation_card.dart';

import '../Utils.dart';

class SolicitationPage extends StatelessWidget {
  const SolicitationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const tittleTextStyle = TextStyle(color: Utils.AzulDaDev, fontSize: 25);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SolicitacoesCard(),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Pendentes",
            style: tittleTextStyle,
          ),
          const SizedBox(
            height: 60,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              SolicitationCard(
                data: "13/08",
                hora: "15:30",
                sala: "H 201",
                motivo: "Estudar",
                status: StatusWidget.Pendente(),
              ),
              SolicitationCard(
                  data: "20/08",
                  hora: "10:30",
                  sala: "H 301",
                  motivo: "Atividade da entidade",
                  status: StatusWidget.Pendente()),
              SolicitationCard(
                  data: "10/08",
                  hora: "10:25",
                  sala: "H 301",
                  motivo: "Estudar",
                  status: StatusWidget.Pendente())
            ]),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Histórico",
            style: tittleTextStyle,
          ),
          const SizedBox(
            height: 60,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              SolicitationCard(
                data: "10/02",
                hora: "10:25",
                sala: "H 301",
                motivo: "Estudar",
                status: StatusWidget.Aprovado(),
              ),
              SolicitationCard(
                  data: "10/03",
                  hora: "10:25",
                  sala: "H 301",
                  motivo: "Atividade da entidade",
                  status: StatusWidget.Aprovado()),
              SolicitationCard(
                  data: "10/08",
                  hora: "10:25",
                  sala: "H 301",
                  motivo: "Estudar",
                  status: StatusWidget.Aprovado())
            ]),
          )
        ],
      ),
    );
  }

  Container SolicitacoesCard() => Container(
      alignment: Alignment.center,
      width: 300,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Utils.AzulDaDev),
      child: const Text(
        "Solicitações",
        style: TextStyle(
          color: Colors.white,
          fontSize: 60,
        ),
      ));
}
