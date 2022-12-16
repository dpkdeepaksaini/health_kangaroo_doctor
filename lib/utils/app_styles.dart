import 'package:flutter/material.dart';

class Styles {
  static Color primeryColor = const Color.fromARGB(255, 62, 188, 118);
  static Color greyColor = Colors.black38;
  static Color lightGreyColor = const Color.fromARGB(255, 235, 235, 235);
// DEEPAK
  static TextStyle commonText = const TextStyle(
    fontSize: 16,
  );
  static TextStyle commonBoldText =
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  static TextStyle commonWhiteText =
      const TextStyle(fontSize: 16, color: Colors.white);
  static TextStyle commonWhiteBoldText = const TextStyle(
      fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold);
  static TextStyle smallText = const TextStyle(
    fontSize: 10,
  );

  // ASHWANI
  static TextStyle mediumSizeText = const TextStyle(
    fontSize: 18,
  );
  static TextStyle smallGreyText =
      const TextStyle(fontSize: 12, color: Colors.black45);

  static TextStyle mediumText = const TextStyle(
    fontSize: 18,
  );
  static TextStyle largeText = const TextStyle(fontSize: 50);
  static TextStyle greyText = const TextStyle(fontSize: 12, color: Colors.grey);
}
