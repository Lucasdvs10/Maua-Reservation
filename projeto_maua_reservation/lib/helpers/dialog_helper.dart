import 'package:flutter/material.dart';
import 'package:projeto_maua_reservation/pages/pop_up.dart';

class DialogHelper {
  static exit(context) =>
      showDialog(context: context, builder: (context) => popup());
}
