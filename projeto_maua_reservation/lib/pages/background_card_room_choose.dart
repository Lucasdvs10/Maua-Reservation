import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/Entities/block.dart';
import 'package:projeto_maua_reservation/pages/calendar.dart';
import 'package:projeto_maua_reservation/pages/formulario_page.dart';
import 'package:projeto_maua_reservation/pages/select_block_screen.dart';
import 'package:projeto_maua_reservation/pages/select_room_page.dart';

import '../Utils.dart';
import '../widgets/select_option_buttons_list.dart';

class BackgroundCardRoomChoose extends StatefulWidget {
  static _BackgroundCardRoomChooseState state =
      _BackgroundCardRoomChooseState();

  BackgroundCardRoomChoose({Key? key}) : super(key: key) {}

  static void SetChildWidget(Widget widget) => state.childWidget = widget;

  @override
  State<BackgroundCardRoomChoose> createState() =>
      state = _BackgroundCardRoomChooseState();
}

class _BackgroundCardRoomChooseState extends State<BackgroundCardRoomChoose> {
  Widget childWidget = CalendarCard();

  void SetChildWidget(Widget widget) {
    setState(() {
      childWidget = widget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: Stack(
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 0.01,
                          blurRadius: 10),
                    ]),
                padding: const EdgeInsets.all(40),
                height: 600,
                width: 400,
                child: FormularioPage(), //Aqui a gente fica alterando os cards
              ),
            ),
            Positioned(
              top: 120,
              left: 150,
              child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Utils.AzulDaDev),
                  child: const Text(
                    "Salas",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  )),
            ),
            Positioned(
              bottom: 110,
              left: 200,
              child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/Triangulos.png")))),
            )
          ],
        ),
      ),
    );
  }
}
