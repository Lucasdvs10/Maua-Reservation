import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/pages/background_card_room_choose.dart';
import 'package:projeto_maua_reservation/pages/calendar.dart';
import 'package:projeto_maua_reservation/pages/mother_screen.dart';

class ChooseRoomOrCourt extends StatelessWidget {
  ChooseRoomOrCourt({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Text("O que você gostaria de reservar?",
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 12, 74, 126))),
          SizedBox(height: 40),
          BotaoGrandeComIcone("Salas", () {
            TelaMae.SetMotherScreenBody(BackgroundCardRoomChoose());
            print("Indo para a página de salas");
          }, 'assets/images/Circulos.png'),
          SizedBox(height: 100),
          BotaoGrandeComIcone("Quadras", () {
            print("Indo para a tela das quadras");
          }, 'assets/images/Triangulos.png')
        ],
      )),
    );
  }

  ElevatedButton BotaoGrandeComIcone(
      String label, void Function() callbackFunction, String iconPath) {
    return ElevatedButton(
      onPressed: callbackFunction,
      style: ButtonStyle(
          maximumSize: MaterialStateProperty.all<Size?>(const Size(400, 130)),
          minimumSize: MaterialStateProperty.all<Size?>(const Size(400, 130)),
          elevation: MaterialStateProperty.all<double?>(10),
          shadowColor: MaterialStateProperty.all<Color?>(
              Color.fromARGB(255, 12, 74, 126)),
          backgroundColor: MaterialStateProperty.all<Color?>(Colors.white)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(iconPath))),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            label,
            style: TextStyle(
                fontSize: 50, color: Color.fromARGB(255, 12, 74, 126)),
          )
        ],
      ),
    );
  }
}
