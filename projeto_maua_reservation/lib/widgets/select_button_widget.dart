import 'package:flutter/material.dart';

class SelectButtonWidget extends StatefulWidget {
  late _SelectButtonWidgetState state;

  final void Function()? callbackFunction;

  void SetSelectedState(bool nextState) => state.SetSelectedState(nextState);

  final int index;

  String GetButtonStringText() => state._stringText;

  SelectButtonWidget(
      String stringButton, Color selectedColor, Color unselectedColor,
      {super.key, this.callbackFunction, required this.index}) {
    state = _SelectButtonWidgetState();
    state._stringText = stringButton;
    state._selectedColor = selectedColor;
    state._unselectedColor = unselectedColor;
    state._callbackFunction = callbackFunction;
  }

  @override
  State<SelectButtonWidget> createState() => state;
}

class _SelectButtonWidgetState extends State<SelectButtonWidget> {
  late String _stringText;
  late Color _selectedColor;
  late Color _unselectedColor;
  bool _selected = false;
  void Function()? _callbackFunction;

  void SetSelectedState(bool newState) => setState(() {
        _selected = newState;
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _selected ? _selectedColor : _unselectedColor,
      child: TextButton(
        onPressed: () {
          SetSelectedState(!_selected);

          if (_callbackFunction != null) {
            _callbackFunction!();
          }
        },
        child: Text(
          _stringText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
