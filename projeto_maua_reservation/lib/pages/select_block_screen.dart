import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/Entities/block.dart';
import 'package:projeto_maua_reservation/Utils.dart';
import 'package:projeto_maua_reservation/pages/background_card_room_choose.dart';
import 'package:projeto_maua_reservation/pages/select_room_page.dart';
import 'package:projeto_maua_reservation/widgets/generic_button.dart';
import 'package:projeto_maua_reservation/widgets/select_button_widget.dart';
import 'package:projeto_maua_reservation/widgets/select_option_buttons_list.dart';

class SelectBlockPage extends StatefulWidget {
  SelectBlockPage({Key? key}) : super(key: key) {
    state = _SelectBlockPageState();
    state.blocksList = [
      SelectButtonWidget(
        "A",
        Utils.AzulDaDev,
        Colors.grey,
        index: 0,
        callbackFunction: () {
          state._currentBlock = Block.BlocoA();
          state.blocksList.forEach((element) {
            if (element.index != 0) {
              element.SetSelectedState(false);
            }
          });
        },
      ),
      SelectButtonWidget("B", Utils.AzulDaDev, Colors.grey, index: 1,
          callbackFunction: () {
        state._currentBlock = Block.BlocoB();
        state.blocksList.forEach((element) {
          if (element.index != 1) {
            element.SetSelectedState(false);
          }
        });
      }),
      SelectButtonWidget("C", Utils.AzulDaDev, Colors.grey, index: 2,
          callbackFunction: () {
        state._currentBlock = Block.BlocoC();
        state.blocksList.forEach((element) {
          if (element.index != 2) {
            element.SetSelectedState(false);
          }
        });
      }),
      SelectButtonWidget("D", Utils.AzulDaDev, Colors.grey, index: 3,
          callbackFunction: () {
        state._currentBlock = Block.BlocoD();
        state.blocksList.forEach((element) {
          if (element.index != 3) {
            element.SetSelectedState(false);
          }
        });
      }),
      SelectButtonWidget("E", Utils.AzulDaDev, Colors.grey, index: 4,
          callbackFunction: () {
        state._currentBlock = Block.BlocoE();
        state.blocksList.forEach((element) {
          if (element.index != 4) {
            element.SetSelectedState(false);
          }
        });
      }),
      SelectButtonWidget("J", Utils.AzulDaDev, Colors.grey, index: 5,
          callbackFunction: () {
        state._currentBlock = Block.BlocoJ();
        state.blocksList.forEach((element) {
          if (element.index != 5) {
            element.SetSelectedState(false);
          }
        });
      }),
      SelectButtonWidget("H", Utils.AzulDaDev, Colors.grey, index: 6,
          callbackFunction: () {
        state._currentBlock = Block.BlocoH();
        state.blocksList.forEach((element) {
          if (element.index != 6) {
            element.SetSelectedState(false);
          }
        });
      }),
      SelectButtonWidget("U", Utils.AzulDaDev, Colors.grey, index: 7,
          callbackFunction: () {
        state._currentBlock = Block.BlocoU();
        state.blocksList.forEach((element) {
          if (element.index != 7) {
            element.SetSelectedState(false);
          }
        });
      }),
      SelectButtonWidget("P", Utils.AzulDaDev, Colors.grey, index: 8,
          callbackFunction: () {
        state._currentBlock = Block.BlocoP();
        state.blocksList.forEach((element) {
          if (element.index != 8) {
            element.SetSelectedState(false);
          }
        });
      }),
      SelectButtonWidget("Q", Utils.AzulDaDev, Colors.grey, index: 9,
          callbackFunction: () {
        state._currentBlock = Block.BlocoQ();
        state.blocksList.forEach((element) {
          if (element.index != 9) {
            element.SetSelectedState(false);
          }
        });
      }),
      SelectButtonWidget("W", Utils.AzulDaDev, Colors.grey, index: 10,
          callbackFunction: () {
        state._currentBlock = Block.BlocoW();
        state.blocksList.forEach((element) {
          if (element.index != 10) {
            element.SetSelectedState(false);
          }
        });
      })
    ];
  }

  late _SelectBlockPageState state;

  @override
  State<SelectBlockPage> createState() => state;
}

class _SelectBlockPageState extends State<SelectBlockPage> {
  late Block _currentBlock;
  late List<SelectButtonWidget> blocksList;

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
            children: blocksList,
          ),
        ),
        GenericButton.Proximo(true, () {
          BackgroundCardRoomChoose.state
              .SetChildWidget(SelectRoomPage(_currentBlock));
        })
      ],
    ));
  }
}
