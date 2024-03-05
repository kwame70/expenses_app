import 'package:expense_tracker/pages/add_expenses.dart';
import 'package:expense_tracker/pages/statistics_page.dart';
import 'package:expense_tracker/pages/welcome.dart';
import 'package:expense_tracker/widgets/activity_card.dart';
import 'package:expense_tracker/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = const [Welcome(), AddExpense(), Statistics()];
  @override
  Widget build(BuildContext context) {
    int currentPageIndex = 0;
    return Scaffold(
      bottomNavigationBar:
          NavigationBar(selectedIndex: currentPageIndex, destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        NavigationDestination(
            icon: Icon(Icons.add_circle_outline_sharp), label: "Add Expenses"),
        NavigationDestination(
            icon: Icon(Icons.analytics_outlined), label: "Statistics"),
      ]),
      body: const Welcome(),
    );
  }
}
