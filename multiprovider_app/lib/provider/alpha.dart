import 'package:flutter/material.dart';

class Alpha with ChangeNotifier {
  Color alphaValue(alpha) {
    return Color.fromARGB(alpha, 100, 100, 100);
  }
}
