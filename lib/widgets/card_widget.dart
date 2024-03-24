import "package:flutter/material.dart";

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.totalExp});
  final String totalExp;

  @override
  Widget build(BuildContext context) {
    //main card
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: Colors.white,
        elevation: 50.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Center(
          child: Text(
            totalExp,
            style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent),
          ),
        ),
      ),
    );
  }
}
