import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
    required this.category,
    required this.icon,
    required this.notes,
    required this.amount,
  });

  final IconData icon;
  final String category;
  final String notes;
  final double amount;

  @override
  Widget build(BuildContext context) {
    const TextStyle color = TextStyle(color: Colors.white);

    final DateTime now = DateTime.now();
    DateFormat formatter = DateFormat.yMMMd();
    String formattedDate = formatter.format(now);

    return Card(
      color: const Color.fromARGB(255, 11, 174, 215),
      elevation: 5,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(icon),
        ),
        title: Text(
          category,
          style: color,
        ),
        subtitle: Text(
          "$notes \n$formattedDate",
          style: color,
        ),
        trailing: Text(
          amount.toString(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
