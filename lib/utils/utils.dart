import 'package:flutter/material.dart';

abstract class InputStyle {

  static const TextStyle mainHintStyle = TextStyle(color: Colors.blueGrey);

  static const OutlineInputBorder mainBorder = OutlineInputBorder();
}

abstract class TitleStyle {
  static const TextStyle main = TextStyle(
    fontSize: 32, fontFamily: 'Poppins', fontWeight: FontWeight.bold,);
}