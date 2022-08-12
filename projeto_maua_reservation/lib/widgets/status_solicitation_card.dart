import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget(
      {Key? key, required this.cardColor, required this.cardText})
      : super(key: key);

  final Color cardColor;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: cardColor,
      child: SizedBox(
        height: 25,
        width: 70,
        child: Center(
          child: Text(
            cardText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  factory StatusWidget.Aprovado() {
    return const StatusWidget(
        cardColor: Color.fromARGB(255, 114, 210, 105), cardText: "Aprovado");
  }

  factory StatusWidget.Pendente() {
    return const StatusWidget(
        cardColor: Color.fromARGB(255, 214, 212, 57), cardText: "Pendente");
  }
}
