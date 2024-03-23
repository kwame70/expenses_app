import 'package:flutter/material.dart';

class Constants {
  static const blueBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Color.fromRGBO(89, 213, 244, 1),
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
