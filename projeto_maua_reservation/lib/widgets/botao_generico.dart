import 'package:flutter/material.dart';

class BotaoGenerico extends StatefulWidget {
  late State<BotaoGenerico> _state;

  final String buttonText;
  final ButtonStyle enabledButtonStyle;
  final ButtonStyle disabledButtonStyle;
  final double height, width;
  final TextStyle enabledTextStyle;
  final TextStyle disabledTextStyle;
  bool enabled = true;
  void Function() callBackFunction;

  BotaoGenerico(
      {Key? key,
      required this.buttonText,
      required this.enabledButtonStyle,
      required this.disabledButtonStyle,
      required this.height,
      required this.width,
      required this.enabledTextStyle,
      required this.disabledTextStyle,
      required this.callBackFunction})
      : super(key: key) {
    _state = _BotaoGenericoState();
  }

  void SetButtonEnable(bool enable) {
    _state.setState(() {
      this.enabled = enable;
    });
  }

  void SetCallbackFuncition(void Function() callbackFunction) {
    _state.setState(() {
      this.callBackFunction = callbackFunction;
    });
  }

  @override
  State<BotaoGenerico> createState() => _state;

  factory BotaoGenerico.Proximo() {
    return BotaoGenerico(
      buttonText: 'Proximo',
      disabledButtonStyle: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)),
      enabledButtonStyle: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
      disabledTextStyle: const TextStyle(color: Colors.white),
      enabledTextStyle: const TextStyle(color: Colors.white),
      height: 50,
      width: 100,
      callBackFunction: () {
        print("Indo pra proxima pagina");
      },
    );
  }

  factory BotaoGenerico.Voltar() {
    return BotaoGenerico(
      buttonText: 'Voltar',
      disabledButtonStyle: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)),
      enabledButtonStyle: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
      disabledTextStyle: const TextStyle(color: Colors.white),
      enabledTextStyle: const TextStyle(color: Colors.white),
      height: 50,
      width: 100,
      callBackFunction: () {
        print("Indo pra proxima pagina");
      },
    );
  }
}

class _BotaoGenericoState extends State<BotaoGenerico> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: TextButton(
        onPressed: widget.enabled ? widget.callBackFunction : null,
        style: widget.enabled
            ? widget.enabledButtonStyle
            : widget.disabledButtonStyle,
        child: Text(
          widget.buttonText,
          style: widget.enabled
              ? widget.enabledTextStyle
              : widget.disabledTextStyle,
        ),
      ),
    );
  }
}
