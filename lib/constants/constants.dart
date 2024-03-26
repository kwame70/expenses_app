import 'package:flutter/material.dart';

class Constants {
  static const blackCircBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(30),
    ),
  );

  static const recBlueBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Color.fromRGBO(89, 213, 244, 1),
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  );

  static const recWhiteBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  );

  static const blackBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  );

  static const whiteColorTextStyle = TextStyle(color: Colors.white);
  static const blackColorTextStyle = TextStyle(color: Colors.black);
}

enum IconDisplay {
  shopping(Icons.shopping_cart_outlined, "Shopping"),
  home(Icons.home_outlined, "Rent"),
  food(Icons.fastfood_outlined, "Food"),
  travel(Icons.card_travel_outlined, "Travel"),
  other(Icons.widgets_outlined, "Other");

  const IconDisplay(this.icon, this.label);

  final String label;
  final IconData icon;
}
