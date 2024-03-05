import "package:flutter/material.dart";

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.totalExp});
  final String totalExp;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: const Color.fromRGBO(89, 213, 244, 1),
        elevation: 20.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Center(
          child: Text(
            totalExp,
            style: const TextStyle(
                fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
