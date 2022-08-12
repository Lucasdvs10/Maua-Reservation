import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_maua_reservation/Utils.dart';
import 'package:projeto_maua_reservation/widgets/generic_button.dart';

class FormularioPage extends StatelessWidget {
  const FormularioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Resumo da Solicitação',
            style: TextStyle(color: Utils.AzulDaDev, fontSize: 24),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.03,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Utils.AzulDaDev, width: 1.5),
            ),
            child: const Text(
              'Nome',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.03,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Utils.AzulDaDev, width: 1.5),
            ),
            child: const Text(
              'RA',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Utils.AzulDaDev, width: 1.5),
                ),
                child: const Text(
                  'Horário',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Utils.AzulDaDev, width: 1.5),
                ),
                child: const Text(
                  'Data',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.03,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Utils.AzulDaDev, width: 1.5),
            ),
            child: const Text(
              'Sala',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.03,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: motivoReserva(),
          ),
          descricao(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // GenericButton.Voltar(activated, func),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Utils.AzulDaDev),
                    elevation: MaterialStateProperty.all(0),
                  ),
                  onPressed: () {},
                  child: Container(
                    height: 60,
                    width: 120,
                    alignment: Alignment.center,
                    child: const Text(
                      'Confirmar',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontFamily: 'abel'),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }

  Widget motivoReserva() => const TextField(
        decoration: InputDecoration(
          labelText: 'Motivo da Reserva',
          labelStyle: TextStyle(
            color: Color.fromARGB(255, 28, 68, 129),
            fontSize: 16,
          ),
          hintText: 'Atividade de Entidade',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 28, 68, 129),
              width: 1.5,
            ),
            // borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 28, 68, 129),
              width: 1.5,
            ),
            // borderRadius: BorderRadius.circular(10),
          ),
        ),
      );

  Widget descricao() => const TextField(
        decoration: InputDecoration(
          labelText: 'Descrição',
          labelStyle: TextStyle(
            color: Color.fromARGB(255, 28, 68, 129),
            fontSize: 16,
          ),
          hintText:
              'A sala será utilizada para uma capacitação da entidade Dev Community, será utilizado o projetor e as lousas.',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 28, 68, 129),
              width: 1.5,
            ),
            // borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 28, 68, 129),
              width: 1.5,
            ),
            // borderRadius: BorderRadius.circular(10),
          ),
        ),
        style: TextStyle(height: 5),
      );
}
