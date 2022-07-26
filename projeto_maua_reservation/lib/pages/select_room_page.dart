import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/pages/background_card_room_choose.dart';
import 'package:projeto_maua_reservation/pages/formulario_page.dart';
import 'package:projeto_maua_reservation/pages/select_block_screen.dart';
import 'package:projeto_maua_reservation/widgets/generic_button.dart';
import 'package:projeto_maua_reservation/widgets/select_option_buttons_list.dart';

import '../Entities/block.dart';

class SelectRoomPage extends StatefulWidget {
  late _SelectRoomPageState state;

  SelectRoomPage(Block block, {Key? key}) : super(key: key) {
    state = _SelectRoomPageState();
    state._block = block;
    state.proximoButton = GenericButton.Proximo(true, () {
      print(state._list.GetCurrentStringOption());
      BackgroundCardRoomChoose.state.SetChildWidget(FormularioPage());
    });

    state._list = SelectRoomButtonsList(List.generate(
        state._block.GetRoomsList().length,
        (index) => Text(state._block.GetRoomFromList(index))));
  }

  @override
  State<SelectRoomPage> createState() => state;
}

class _SelectRoomPageState extends State<SelectRoomPage> {
  late Block _block;
  late SelectRoomButtonsList _list;
  late GenericButton proximoButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: 500,
          width: 400,
          child: _list,
        ),
        Positioned(
          bottom: 5,
          right: 10,
          child: proximoButton,
        ),
        Positioned(
          bottom: 5,
          left: 10,
          child: GenericButton.Voltar(true, () {
            BackgroundCardRoomChoose.state.SetChildWidget(SelectBlockPage());
          }),
        )
      ]),
    );
  }
}
