import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/pages/background_card_room_choose.dart';
import 'package:projeto_maua_reservation/pages/choose_room_or_court.dart';
import 'package:projeto_maua_reservation/pages/login_page.dart';
import 'package:projeto_maua_reservation/widgets/solicitation_card.dart';
import 'package:projeto_maua_reservation/pages/tela-info.dart';

class TelaMae extends StatefulWidget {
  TelaMae({Key? key}) : super(key: key) {
    state = _TelaMaeState(SolicitationCard(
      data: "10/02",
      hora: "10:25 até 13:00",
      sala: "H 207",
      motivo: "Jogar lol drogado",
    )); //Mudar aqui quando terminar!!!!
  }
  static _TelaMaeState state = _TelaMaeState(ChooseRoomOrCourt());

  static Widget? bodyWidget = ChooseRoomOrCourt();

  static void SetMotherScreenBody(Widget? wiget) {
    bodyWidget = wiget;

    state.SetMotherScreenBody(bodyWidget);
  }

  @override
  State<TelaMae> createState() => state;
}

class _TelaMaeState extends State<TelaMae> {
  int currentPageIndex = 0;
  Widget? bodyWidget;

  final screensList = [
    //aqui a gente coloca cada página referente à um item na navigation bar
    ChooseRoomOrCourt(),
    Text("Goodbye"),
    Text("Fare well"),
    InfoPage()
  ];

  void SetMotherScreenBody(Widget? wiget) {
    setState(() {
      bodyWidget = wiget;
      print(bodyWidget);
    });
  }

  _TelaMaeState(Widget? bodyWidget) {
    this.bodyWidget = bodyWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyWidget,
      bottomNavigationBar: BarraInferior(),
    );
  }

  BottomNavigationBar BarraInferior() => BottomNavigationBar(
        onTap: (value) {
          currentPageIndex = value;
          SetMotherScreenBody(screensList[currentPageIndex]);
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
