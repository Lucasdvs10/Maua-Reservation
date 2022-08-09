import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/Utils.dart';
import 'package:projeto_maua_reservation/widgets/select_button_widget.dart';

class SelectRoomButtonsList extends StatefulWidget {
  late List<Text> _textLists;
  late _SelectRoomState state;

  SelectRoomButtonsList(List<Text> textLists, {super.key}) {
    _textLists = textLists;
    state = _SelectRoomState(_textLists);

    state._buttonsList = List.generate(
        _textLists.length,
        (index) => SelectButtonWidget(
              _textLists[index].data!,
              Utils.AzulDaDev,
              Colors.grey,
              index: index,
              callbackFunction: () {
                state._currentStringOption = _textLists[index].data!;
                state._buttonsList.forEach((element) {
                  if (element.index != index) {
                    element.SetSelectedState(false);
                  }
                });

              },
            ));
  }

  String GetCurrentStringOption() => state._currentStringOption;

  @override
  State<SelectRoomButtonsList> createState() => state;
}

class _SelectRoomState extends State<SelectRoomButtonsList> {
  late List<Text> _textsList;
  late String _currentStringOption;
  late List<SelectButtonWidget> _buttonsList;

  _SelectRoomState(List<Text> list) {
    _textsList = list;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Wrap(
        direction: Axis.vertical,
        spacing: 25,
        runSpacing: 52,
        children: _buttonsList,
      ),
    );
  }
}
