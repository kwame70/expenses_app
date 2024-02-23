import "package:flutter/material.dart";

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({
    super.key,
    this.controller,
    required this.hintext,
    this.keyboardType,
    required this.hideText,
  });
  final TextEditingController? controller;
  final String hintext;
  final TextInputType? keyboardType;
  final bool hideText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: hideText,
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.white),
        hintText: hintext,
        enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
        focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
      ),
      style: const TextStyle(
          color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
    );
  }
}
