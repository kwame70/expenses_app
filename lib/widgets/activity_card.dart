import 'package:expense_tracker/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
    required this.category,
    required this.icon,
    required this.notes,
    required this.amount,
    required this.bgColor,
    required this.iconBgColor,
  });

  final IconData icon;
  final String category;
  final String notes;
  final double amount;
  final Color bgColor;
  final Color iconBgColor;

  @override
  Widget build(BuildContext context) {
    // const TextStyle color = TextStyle(color: Colors.white);

    final DateTime now = DateTime.now();
    DateFormat formatter = DateFormat.yMMMd();
    String formattedDate = formatter.format(now);

    return Card(
      color: bgColor,
      elevation: 5,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: iconBgColor,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        // expense category
        title: Text(
          category,
          // style: color,
        ),
        // notes
        subtitle: Text(
          "$notes \n$formattedDate",
          style: Constants.blackColorTextStyle,
        ),
        // amount
        trailing: Text(
          amount.toString(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            // color: Colors.white,
          ),
        ),
      ),
    );
  }
}
