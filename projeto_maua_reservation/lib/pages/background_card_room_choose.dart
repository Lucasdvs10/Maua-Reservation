import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/widgets/calendar.dart';

class BackgroundCardRoomChoose extends StatelessWidget {
  const BackgroundCardRoomChoose({Key? key}) : super(key: key);

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
                child: const CalendarCard(),
              ),
            ),
            Positioned(
              top: 100,
              left: 160,
              child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 12, 74, 126)),
                  child: const Text(
                    "Salas",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  )),
            ),
            Positioned(
              bottom: 90,
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