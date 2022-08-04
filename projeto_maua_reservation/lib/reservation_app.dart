import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/pages/tela_mae.dart';


class ReservationApp extends StatelessWidget {
  const ReservationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.white),
      ),
      home: const TelaMae(),
    );
  }
}