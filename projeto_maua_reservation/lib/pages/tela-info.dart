import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              const Padding(
            padding: EdgeInsets.only(top: 60)
              ),
              Container(
                height: 60,
                width: 160,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 28, 68, 129),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: const Text('Info',
                    style: TextStyle(
                        fontSize: 45, color: Colors.white, fontFamily: 'abel')),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text('Esse aplicativo foi desenvolvido pela',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 28, 68, 129),
                        fontFamily: 'abel')),
              ),
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/logodev.png'))),
                alignment: Alignment.center,
                height: 350,
                width: 350,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 60, right: 30, top: 5),
                child: Text(
                    'Entidade responsável por criar soluções tecnológicas dentro do Instituto Mauá de Tecnologia',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 28, 68, 129),
                        fontFamily: 'abel')),
              )
            ],
          ),
        ],
      ),
    );
  }
}
