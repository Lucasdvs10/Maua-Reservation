import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/pages/background_card_room_choose.dart';
import 'package:projeto_maua_reservation/pages/choose_room_or_court.dart';

class MotherScreen extends StatefulWidget {
  const MotherScreen({Key? key}) : super(key: key);

  @override
  State<MotherScreen> createState() => _MotherScreenState();
}

class _MotherScreenState extends State<MotherScreen> {
  int currentPageIndex = 0;

  final screensList = [
    //aqui a gente coloca cada página referente à um item na navigation bar
    // ChooseRoomOrCourt(),
    BackgroundCardRoomChoose(),
    ChooseRoomOrCourt(),
    Text("Fare well"),
    Text("So long"),
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
