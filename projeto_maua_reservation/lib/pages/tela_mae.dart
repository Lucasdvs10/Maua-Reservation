import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/pages/login_page.dart';
import 'package:projeto_maua_reservation/pages/tela-info.dart';
import 'package:projeto_maua_reservation/pages/tela_quadra_ou_sala.dart';



class TelaMae extends StatefulWidget {
  const TelaMae({Key? key}) : super(key: key);

  @override
  State<TelaMae> createState() => _TelaMaeState();
}

class _TelaMaeState extends State<TelaMae> {
  int currentPageIndex = 0;

  final screensList = [
    //aqui a gente coloca cada página referente à um item na navigation bar
    TelaEscolherQuadraOuSala(),
    Text("Goodbye"),
    Text("Fare well"),
    InfoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensList[currentPageIndex],
      bottomNavigationBar: BarraInferior(),
    );
  }

  BottomNavigationBar BarraInferior() => BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentPageIndex = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Tela incial"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat), label: "Solicitações"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Sobre nós")
        ],
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedItemColor: const Color.fromARGB(255, 16, 71, 116),
        unselectedItemColor: Colors.grey,
        currentIndex: currentPageIndex,
      );
}
