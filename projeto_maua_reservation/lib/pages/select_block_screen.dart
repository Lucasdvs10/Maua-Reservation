import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/Entities/block.dart';
import 'package:projeto_maua_reservation/pages/select_room_page.dart';
import 'package:projeto_maua_reservation/widgets/generic_button.dart';
import 'package:projeto_maua_reservation/widgets/select_option_buttons_list.dart';

class SelectBlockPage extends StatefulWidget {
  const SelectBlockPage({Key? key}) : super(key: key);

  @override
  State<SelectBlockPage> createState() => _SelectBlockPageState();
}

class _SelectBlockPageState extends State<SelectBlockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 450,
          child: Wrap(
            direction: Axis.vertical,
            spacing: 15,
            runSpacing: 25,
            children: [
              OutlinedButton(
                  onPressed: (() => print("Que isso")), child: Text("A")),
              OutlinedButton(
                  onPressed: (() => print("Que isso")), child: Text("B")),
              OutlinedButton(
                  onPressed: (() => print("Que isso")), child: Text("C")),
              OutlinedButton(
                  onPressed: (() => print("Que isso")), child: Text("D"))
            ],
          ),
        ),
        GenericButton.Proximo(true, () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SelectRoomPage(Block.BlocoH())),
          );
        })
      ],
    ));
  }
}
