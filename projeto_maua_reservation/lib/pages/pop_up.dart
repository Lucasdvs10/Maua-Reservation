import 'package:flutter/material.dart';

class popup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
      height: 605,
      width: 350,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 28, 68, 129),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          Container(
            height: 55,
            width: 140,
            child: Text(
              'Salas',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 50,
                  color: Color.fromARGB(255, 28, 68, 129),
                  fontFamily: 'abel'),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text('Sua solicitação foi enviada com sucesso!!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30, color: Colors.white, fontFamily: 'abel')),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text('Confira o andamento na TELA DE SOLICITAÇÕES',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30, color: Colors.white, fontFamily: 'abel')),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          Image.asset(
            'assets/images/mauacb.png',
            height: 100,
            width: 120,
          ),
          Container(
            color: Color.fromARGB(255, 28, 68, 129),
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(onPrimary: Colors.white ),
              child: Text('Tela de Solicitações',
                style: TextStyle(color: Colors.white),),
              onPressed: null,
              ),
            ),
          Container(
            color: Color.fromARGB(255, 28, 68, 129),
            height: 50,
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(onPrimary: Colors.white ),
              child: Text('Home',
                style: TextStyle(color: Colors.white),),
              onPressed: null,
            ),
          ),
        ],
      ),
      );
}
